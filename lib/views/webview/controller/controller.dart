import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:mp/extension/string.ext.dart';


class AppWebviewParams {
  String? url;

  AppWebviewParams({this.url});

  AppWebviewParams.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['url'] = url;
    return data;
  }
}


class AppWebviewController extends GetxController {
  final params = AppWebviewParams.fromJson(Get.parameters);

  InAppWebViewController? webViewController;
  InAppWebViewSettings settings = InAppWebViewSettings(
      isInspectable: kDebugMode,
      mediaPlaybackRequiresUserGesture: false,
      allowsInlineMediaPlayback: true,
      iframeAllow: "camera; microphone",
      iframeAllowFullscreen: true,
      allowsLinkPreview: true,
      allowsPictureInPictureMediaPlayback: true,
      cacheMode: CacheMode.LOAD_DEFAULT,
  );
  // webview路径
  String get webUri => (params.url ?? "").decode<String>();

  final title = "".obs;
  final progress = (0.0).obs;

  @override
  void onClose() {
    webViewController?.dispose();
    super.onClose();
  }
}
