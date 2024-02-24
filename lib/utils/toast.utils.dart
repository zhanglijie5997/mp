import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:mp/components/custom.confim.dart';
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

  static confirm([CustomConfirmParams? params]) {
    SmartDialog.show(
        builder: (BuildContext context) {
          return CustomConfirm(params: params);
        }
    );
  }

  static close() {
    SmartDialog.dismiss();
  }
}


class CustomConfirmParams {
  String? title;
  String? content;
  String? submitText;
  String? cancelText;
  Function? submit;
  Function? cancel;

  CustomConfirmParams(
      {this.title,
        this.content,
        this.submitText,
        this.cancelText,
        this.submit,
        this.cancel});

  CustomConfirmParams.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    submitText = json['submitText'];
    cancelText = json['cancelText'];
    submit = json['submit'];
    cancel = json['cancel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['content'] = content;
    data['submitText'] = submitText;
    data['cancelText'] = cancelText;
    data['submit'] = submit;
    data['cancel'] = cancel;
    return data;
  }
}
