import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:mp/animation/shank.ani.dart';
import 'package:mp/api/login/login.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/core/reg.core.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find<LoginController>();
  final GlobalKey<ShankAnimationState> privateKey =
      GlobalKey<ShankAnimationState>();
  final account = "".obs;
  final password = "".obs;
  final accountStatus = false.obs;
  final passwordStatus = false.obs;
  final privateStatus = false.obs;
  changeCount(String value) {
    account.value = value;
    if (RegCore.phoneReg.hasMatch(value)) {
      accountStatus.value = false;
    }
  }

  changePassword(String value) {
    password.value = value;
    if (RegCore.passwrodReg.hasMatch(value)) {
      passwordStatus.value = false;
    }
  }

  handlePrivite(bool value) {
    privateStatus.value = value;
  }

  // 点击忘记密码
  handleForgetPassword() {}
  // 登陆
  handleLogin() async {
    final emailRes = !RegCore.phoneReg.hasMatch(account.value);
    final passwordRes = !RegCore.passwrodReg.hasMatch(password.value);
    if (emailRes) {
      accountStatus.value = true;
    }

    if (passwordRes) {
      passwordStatus.value = true;
    }

    if (emailRes || passwordRes) {
      return;
    }
    print(privateStatus.value);
    if (!privateStatus.value) {
      privateKey.currentState?.play();
      return;
    }
    // 登陆
    final res = await AppLoginRequest.apiAppLoginPhone(
        UserPhoneLoginParams(phone: account.value, code: password.value));
    GlobalController.to.changeUserMsg(res.data!);

    LogUtil.w("登陆成功___${res.data?.data?.token}");
    HomeMeController.to.getUserData();
    Get.back();
  }

  handleRegisterPage() {
    Get.toNamed(AppRoutes.register);
  }
}
