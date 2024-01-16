import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/animation/shank.ani.dart';
import 'package:mp/core/reg.core.dart';
import 'package:mp/router/routes.dart';


class LoginController extends GetxController {
  static LoginController get to => Get.find<LoginController>();
  final GlobalKey<ShankAnimationState> privateKey = GlobalKey<ShankAnimationState>();
  final account = "".obs;
  final password = "".obs;
  final accountStatus = false.obs;
  final passwordStatus = false.obs;
  final privateStatus = false.obs;
  changeCount(String value) {
    account.value = value;
    if (RegCore.emailReg.hasMatch(value)) {
      accountStatus.value = false;
    }
  }

  changePassword(String value) {
    password.value = value;
    if (RegCore.passwrodReg.hasMatch(value)) {
      accountStatus.value = false;
    }
  }

  handlePrivite(bool value) {
    privateStatus.value = value;
  }

  // 点击忘记密码
  handleForgetPassword() {
    
  }
  // 登陆
  handleLogin() {
    final emailRes = !RegCore.emailReg.hasMatch(account.value);
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
    }
    // 登陆
    
  }

  handleRegisterPage() {
    Get.toNamed(AppRoutes.register);
  }

 
}