import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:mp/config/config.dart';
import 'package:mp/constants/data.model.factories.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/models/response.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/utils/storage.utils.dart';
import 'package:mp/utils/toast.utils.dart';
// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart';

// import 'log_util.dart';
// import 'package_util.dart';

enum FetchType { head, get, post, put, patch, delete }

enum CodeType {
  success,
  fail,
}

class HttpUtil {
  const HttpUtil._();

  static const String _tag = '🌐 HttpUtil';
  static bool isLogging = true;

  static final Dio dio = Dio()
    ..options = dioBaseOptions
    ..interceptors.addAll(dioInterceptors);

  static BaseOptions get dioBaseOptions {
    return BaseOptions(
      baseUrl: AppConfig.httpUrl,
      connectTimeout: AppConfig.connectTimeout.milliseconds,
      sendTimeout: AppConfig.connectTimeout.milliseconds,
      receiveTimeout: AppConfig.connectTimeout.milliseconds,
      receiveDataWhenStatusError: true,
    );
  }

  static List<Interceptor> get dioInterceptors => <Interceptor>[
        if (kDebugMode)
          // PrettyDioLogger(
          //   requestHeader: true,
          //   requestBody: true,
          //   responseHeader: true,
          // ),
          _interceptor,
        // _retry
      ];

  static ResponseModel<T> _successModel<T extends DataModel>() =>
      ResponseModel<T>.succeed();

  static ResponseModel<T> _failModel<T extends DataModel>(String message) =>
      ResponseModel<T>.failed(
        msg: '${ResponseModel.errorInternalRequest}: $message',
      );

  // static ResponseModel<T> _cancelledModel<T extends DataModel>(
  //   String message,
  //   String url,
  // ) =>
  //     ResponseModel<T>.cancelled(msg: '$message, $url');

  static Future<ResponseModel<T>> fetch<T>(
    FetchType fetchType, {
    required String url,
    Map<String, String>? queryParameters,
    Object? body,
    Json? headers,
    ResponseType? responseType,
    CancelToken? cancelToken,
  }) async {
    final Response<Json> response = await getResponse(
      fetchType,
      url: dioBaseOptions.baseUrl + url,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      responseType: responseType,
      cancelToken: cancelToken,
    );
    final res = ResponseModel<T>(
        code: response.data?['code'] ?? 1,
        msg: response.data?['message'] ?? '_Http Error',
        data: dataModelFactories[T]!(response.data!) as T,
        timestamp: response.data?['timestamp'] ?? 0);
    return res;
  }

  static Future<ResponseModel<T>> fetchModel<T>(FetchType fetchType,
      {required String url,
      Map<String, dynamic>? queryParameters,
      Object? body,
      Json? headers,
      ResponseType responseType = ResponseType.json,
      CancelToken? cancelToken,
      bool Function(Json json)? modelFilter,
      bool toastError = true}) async {
    _log(body);
    final Response<Json> response = await getResponse(
      fetchType,
      url: url,
      queryParameters: queryParameters,
      body: body,
      headers: headers,
      responseType: responseType,
      cancelToken: cancelToken,
    );
    final Json? resBody = response.data;
    if (resBody?.isNotEmpty ?? false) {

      final ResponseModel<T> model = ResponseModel<T>.fromJson(
        resBody!,
        modelFilter: modelFilter,
      );

      if (!model.isSucceed) {
        // ToastUtil.clear();
        _log('Response is not succeed: ${model.msg} ${model.code}');
        switch (model.code) {
          case 401:
            LogUtil.w('not login');
            // XDToast.confirm(
            //     content: "您还未实名认证，去认证？",
            //     submittext: "去认证",
            //     only: false,
            //     submit: () {
            //       Get.toNamed(Routes.idAuth);
            //       BotToast.cleanAll();
            //     });
            break;
          case 502:
            SmartDialog.showToast('服务器错误');
            break;
          default:
            // if (toastError && response.statusCode != ErrCode.CODE_KICK_OUT) {
            //   XDToast.text(text: model.msg, onlyOne: false);
            // }
            break;
        }
        // ToastUtil.text(model.msg);
      }else {
      }
      _log('Response model: ${model.data}');
      return model;
    } else {
      return _handleStatusCode(response);
    }
  }

  static Future<String> getFilenameFromResponse(
    Response<dynamic> res,
    String url,
  ) async {
    String? filename = res.headers
        .value('content-disposition')
        ?.split('; ')
        .where((String element) => element.contains('filename'))
        .first;
    if (filename != null) {
      final RegExp filenameReg = RegExp(r'filename="(.+)"');
      filename = filenameReg.allMatches(filename).first.group(1);
      filename = Uri.decodeComponent(filename!);
    } else {
      filename = url.split('/').last.split('?').first;
    }
    return filename;
  }

  /// Return the saving path if succeed.
  static Future<String> download(
    String url, {
    String? filename,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    ProgressCallback? progressCallback,
    CancelToken? cancelToken,
    Options? options,
    bool deleteIfExist = true,
    bool openAfterDownloaded = false,
  }) async {
    final Completer<String> completer = Completer<String>();
    try {
      final String tempPath = (await getTemporaryDirectory()).path;
      cancelToken ??= CancelToken();
      late final String filename;
      late final String filePath;
      late int totalContentLength;
      String progress = '';
      final Stopwatch stopwatch = Stopwatch()..start();
      await dio.download(
        url,
        (Headers headers) {
          filename = _filenameFromUrl(headers, url);
          filePath = '$tempPath/$filename';
          final File file = File(filePath);
          if (file.existsSync() && deleteIfExist) {
            _log('Deleting existing download file: $filePath');
            file.deleteSync();
          }
          if (file.existsSync()) {
            if (openAfterDownloaded) {
              _log('File exist in $filePath, opening...');
              // _openFile(filePath);
            } else {
              _log('File exist in $filePath.');
            }
            completer.complete(filePath);
            cancelToken!.cancel();
            stopwatch.stop();
            return filePath;
          }
          _log(
            'File start download:\n'
            '[URL ]: $url\n'
            '[PATH]: $filePath',
          );
          return filePath;
        },
        data: data,
        options: Options(headers: headers),
        cancelToken: cancelToken,
        onReceiveProgress: (int count, int total) {
          totalContentLength = total;
          final String newProgress;
          if (total == -1) {
            newProgress = count.fileSizeFromBytes;
          } else {
            newProgress = (count / total).toStringAsFixed(2);
          }
          if (newProgress != progress) {
            _log('File download progress: $newProgress ($filename)');
            progress = newProgress;
          }
          progressCallback?.call(count, total);
        },
      );
      stopwatch.stop();
      final StringBuffer sb = StringBuffer(
        'File downloaded:\n'
        '[URL  ]: $url\n'
        '[PATH ]: $filePath',
      );
      if (totalContentLength != -1) {
        final int speed = totalContentLength ~/ stopwatch.elapsed.inSeconds;
        sb.write('\n[SPEED]: ${speed.fileSizeFromBytes}/s');
      }
      _log(sb.toString());
      if (openAfterDownloaded) {
        // _openFile(filePath);
      }
      completer.complete(filePath);
    } on DioException catch (e, s) {
      if (e.type != DioExceptionType.cancel) {
        completer.completeError(e, s);
      }
    } catch (e, s) {
      _log(
        'File download failed: $e\n'
        '[URL ]: $url\n',
        stackTrace: s,
        isError: true,
      );
      completer.completeError(e, s);
    }
    return completer.future;
  }

  static String _filenameFromUrl(Headers headers, String url) {
    final RegExp filenameReg = RegExp(r'filename\*?=(.*)');
    final List<String>? validHeaders = headers
        .value('content-disposition')
        ?.split(';')
        .where((String e) => filenameReg.hasMatch(e.trim()))
        .map((String e) => e.trim())
        .toList();
    if (validHeaders == null || validHeaders.isEmpty) {
      return url.split('/').last.split('?').first;
    }
    if (validHeaders.any((String h) => h.startsWith('filename*='))) {
      final String header = validHeaders.singleWhere(
        (String h) => h.startsWith('filename*='),
      );
      return Uri.decodeComponent(
        header
            .removeFirst('filename*=')
            .removeFirst('utf-8')
            .removeFirst('UTF-8')
            .removeFirst("''"),
      );
    }
    return Uri.decodeComponent(validHeaders.first.removeAll('filename='));
  }

  // static Future<OpenResult?> _openFile(String path) async {
  //   try {
  //     _log('Opening file $path...');
  //     final OpenResult result = await OpenFile.open(path);
  //     return result;
  //   } catch (e, s) {
  //     _log('Error when opening file [$path]: $e', stackTrace: s, isError: true);
  //     return null;
  //   }
  // }

  static ResponseModel<T> _handleStatusCode<T extends DataModel>(
    Response<dynamic> response,
  ) {
    final int statusCode = response.statusCode ?? 0;
    _log('Response status code: ${response.statusCode}');
    if (statusCode >= 200 && statusCode < 300) {
      _log('Response code success: $statusCode');
      return _successModel();
    } else if (statusCode >= 300 && statusCode < 400) {
      _log('Response code moved: $statusCode');
      return _successModel();
    } else if (statusCode >= 400 && statusCode < 500) {
      final String message = 'Response code client error: $statusCode';
      _log(message);
      return _failModel(message);
    } else if (statusCode >= 500) {
      final String message = 'Response code server error: $statusCode';
      _log(message);
      return _failModel(message);
    } else {
      final String message = 'Response code unknown status: $statusCode';
      _log(message);
      return _failModel(message);
    }
  }

  static Future<Response<T>> getResponse<T>(
    FetchType fetchType, {
    required String url,
    Map<String, dynamic>? queryParameters,
    Object? body,
    Json? headers,
    ResponseType? responseType = ResponseType.json,
    CancelToken? cancelToken,
    bool Function(Json json)? modelFilter,
  }) async {
    // if (!url.startsWith('http(s?)://')) {
    //   url = 'https://$url';
    // }
    if (body is Map && !body.containsKey('client_type')) {
      // body['client_type'] = 2606; // Indicates client type.
    }
    // 本地获取 token，塞入请求头
    // final _user = Storage.read<AccountLoginRes>(StoreName.userMsg);
    final token = GlobalController.to.token.value;
    if (token.isNotEmpty) {
      headers ??= <String, String?>{"token": token};
    } else {
      headers = {};
    }
    // if (StorageUtils().token.isNotEmpty) {
    //   headers ??= <String, String?>{
    //     "token": StorageUtils.token,
    //   };
    // } else {
    //   headers ??= <String, String?>{};
    // }
    headers ??= <String, String?>{};
    // System headers.
    // headers[HttpHeaders.userAgentHeader] = 'Xitu Juejin Flutter APP'
    //     '(${PackageUtil.versionNameAndCode})';

    // Recreate <String, String> headers and queryParameters.
    final Json effectiveHeaders = headers.map<String, dynamic>(
      (String key, dynamic value) =>
          MapEntry<String, dynamic>(key, value.toString()),
    );
    if (effectiveHeaders.isNotEmpty) {
      _log('$fetchType headers: $effectiveHeaders');
    }
    Uri replacedUri = Uri.parse(url).replace(
      queryParameters: queryParameters?.map<String, String>(
        (String key, dynamic value) =>
            MapEntry<String, String>(key, value.toString()),
      ),
    );
    _log("uri parse =====  $replacedUri ======");
    // if (replacedUri.path.contains(UserOnlineUrl.getUsersOnlineStatus)) {
    //   replacedUri = Uri.parse("${Config.baseUrl}:10000$replacedUri") ;
    // }
    final Options options = Options(
      followRedirects: true,
      headers: effectiveHeaders,
      receiveDataWhenStatusError: true,
      responseType: responseType,
    );

    final Response<T> response;
    switch (fetchType) {
      case FetchType.head:
        response = await dio.headUri(
          replacedUri,
          data: body,
          options: options,
          cancelToken: cancelToken,
        );
        break;
      case FetchType.get:
        response = await dio.getUri(
          replacedUri,
          options: options,
          cancelToken: cancelToken,
        );
        break;
      case FetchType.post:
        response = await dio.postUri(
          replacedUri,
          data: body,
          options: options,
          cancelToken: cancelToken,
        );
        break;
      case FetchType.put:
        response = await dio.putUri(
          replacedUri,
          data: body,
          options: options,
          cancelToken: cancelToken,
        );
        break;
      case FetchType.patch:
        response = await dio.patchUri(
          replacedUri,
          data: body,
          options: options,
          cancelToken: cancelToken,
        );
        break;
      case FetchType.delete:
        response = await dio.deleteUri(
          replacedUri,
          data: body,
          options: options,
          cancelToken: cancelToken,
        );
        break;
    }
    if (response.data == '') {
      response.data = null;
    }
    return response;
  }

  static void _log(
    Object? message, {
    StackTrace? stackTrace,
    bool isError = false,
  }) {
    if (isLogging) {
      if (isError) {
        LogUtil.e(message, stackTrace: stackTrace, tag: _tag);
      } else {
        LogUtil.d(message, stackTrace: stackTrace, tag: _tag);
      }
    }
  }

  static QueuedInterceptorsWrapper get _interceptor {
    return QueuedInterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        _log('Fetching(${options.method}) url: ${options.uri}');
        if (options.data != null) {
          _log('Raw request body: ${options.data}');
        }
        handler.next(options);
      },
      onResponse: (Response<dynamic> res, ResponseInterceptorHandler handler) {
        // _log(
        //   'Got response from: ${res.requestOptions.uri} ${res.statusCode}',
        // );
        _log('${res.data}');
        dynamic resolvedData = res.data;
        if (res.statusCode == HttpStatus.noContent) {
          resolvedData = _successModel().toJson();
        } else {
          final dynamic data = res.data;
          if (data is String) {
            try {
              // If we do want a JSON all the time, DO try to decode the data.
              resolvedData = jsonDecode(data) as Json?;
            } catch (e) {
              resolvedData = data;
            }
          } else {
            resolvedData = data;
          }
        }
        res.data = resolvedData;
        handler.resolve(res);
      },
      onError: (DioException e, ErrorInterceptorHandler handler) async {
        LogUtil.w(e);
        if (e.type == DioExceptionType.cancel) {
          handler.resolve(e.response!);
          return;
        }
        switch (e.response?.statusCode) {
          case 401:
            LogUtil.w('未登陆');
            GlobalController.to.removeUserMsg();
            break;
        }
        if (e.type == DioExceptionType.badResponse) {
          // Alert.showConfirmDialog(I18n.accountKickOutTip, () {
          //   MeController.to.logout();
          // });
        }

        if (kDebugMode) {
          _log(e, stackTrace: e.stackTrace, isError: true);
        }
        final bool isConnectionTimeout =
            e.type == DioExceptionType.connectionTimeout;
        final bool isStatusError = e.response != null &&
            e.response!.statusCode != null &&
            e.response!.statusCode! >= HttpStatus.internalServerError;
        if (!isConnectionTimeout && isStatusError) {
          _log(
            'Error when requesting ${e.requestOptions.uri}\n$e\n'
            'Raw response data: ${e.response?.data}',
            isError: true,
          );
        }
        if (e.response?.data is String) {
          e.response!.data = _failModel(e.response!.data! as String).toJson();
        }
        e.response!.data ??= _failModel(e.message ?? '').toJson();
        handler.resolve(e.response!);
      },
    );
  }
}
