import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:mp/generated/locales.g.dart';
import 'dart:ui' as ui;

import 'package:mp/utils/event.utils.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/utils/toast.utils.dart';
import 'package:uuid/uuid.dart';
class InviteController extends GetxController {
  final GlobalKey repaintBoundaryKey = GlobalKey();
  ByteData? currentByteData;
  final uuid = Uuid();
  createByteData() async{
    RenderRepaintBoundary boundary = repaintBoundaryKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await (image.toByteData(format: ui.ImageByteFormat.png));
    currentByteData = byteData;
  }

  saveToLocal() async{
    ToastUtils.showLoading("${LocaleKeys.loading.tr}...");
    if (currentByteData == null) {
      await createByteData();
    }
    LogUtil.w("图片生成成功");
    await EventUtils.saveImageToLibary(currentByteData!);
    ToastUtils.close();
    ToastUtils.show(LocaleKeys.saveSucces.tr);
  }

  shareFriends() async{
    ToastUtils.showLoading("${LocaleKeys.loading.tr}...");
    if (currentByteData == null) {
      await createByteData();
    }
    await EventUtils.saveImageToLocal(name: "${uuid.v4().toString()}.png", byteData: currentByteData!);
    // Share.shareXFiles(files);
    ToastUtils.close();
  }
}