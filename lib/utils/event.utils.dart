import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

class EventUtils {
  /// 防抖
  static debounce(Function? fn, Duration delay) {
    Timer? timer;
    // 第一次触发
    bool status = false;

    return () {
      if (!status) {
        fn?.call();
      }
      // ignore: unnecessary_null_comparison
      if (timer != null) {
        timer?.cancel();
      }
      timer = Timer(delay, () {
        print("object");
        fn?.call();
        status = false;
      });
    };
  }

  /// 睡眠
  static Future<void> sleep(Duration delay) {
    return Future.delayed(delay);
  }
  /// 保存图片到相册
  static saveImageToLibary(ByteData byteData) async{
    /// 检测是否开启了相册权限
    final res = await Permission.phone.request();
    if (res.isDenied) {
      LogUtil.w("相册权限未开启，去开启相册权限");
      return;
    }
    try {
      final res = await ImageGallerySaver.saveImage(byteData.buffer.asUint8List());
      LogUtil.w("图片保存成功");
    } catch(e) {
      LogUtil.w("保存失败");
    }
  }
  /// 保存图片到沙盒
  static saveImageToLocal({
    required String name,
    required ByteData byteData
  }) async{

    final res = await Permission.storage.request();
    if (res.isDenied) {
      LogUtil.w("沙盒存储权限未开启，请开去沙盒权限");
      return;
    }
    final documentsDir = await getApplicationDocumentsDirectory();
    final imgDir =  Directory('${documentsDir.path}/images');
    final imgDirExits = await imgDir.exists();
    if (!imgDirExits) {
      await Directory('${documentsDir.path}/images').create();
    }
    final saveImagePath = "${imgDir.path}/$name";
    final file = File(saveImagePath);
    await file.writeAsBytes(byteData.buffer.asInt8List());
    LogUtil.w(file.path);
    await Share.shareXFiles([XFile(file.path)]);
  }
  // 保存到剪贴板
  static saveToClipboard(String value) {
    Clipboard.setData(ClipboardData(text: value));
  }
}
