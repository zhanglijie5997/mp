import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';

class ToastUtils {
  static show(String value) {
    SmartDialog.showToast(value,
        alignment: Alignment.center,
        usePenetrate: false,
        maskColor: Colors.transparent);
  }

  static showLoading(String? msg) {
    SmartDialog.showLoading(msg: msg ?? '', backDismiss: false);
    Future.delayed(10.seconds, () {
      ToastUtils.close();
    });
  }

  static close() {
    SmartDialog.dismiss();
  }
}
