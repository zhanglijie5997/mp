import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/animation/shank.ani.dart';
import 'package:mp/api/login/login.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/core/reg.core.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';

class RegisterController extends GetxController {
  static RegisterController get to => Get.find<RegisterController>();
  final GlobalKey<ShankAnimationState> privateKey =
      GlobalKey<ShankAnimationState>();
  final account = "".obs;
  final passwrod = "".obs;
  final accountStatus = false.obs;
  final passwordStatus = false.obs;
  final privateStatus = false.obs;
  final inviteCode = "".obs;
  changeCount(String value) {
    account.value = value;
    if (RegCore.emailReg.hasMatch(value)) {
      accountStatus.value = false;
    }
  }

  changeInviteCode(String value) {
    inviteCode.value = value;
  }

  changePassword(String value) {
    passwrod.value = value;
    if (RegCore.passwrodReg.hasMatch(value)) {
      accountStatus.value = false;
    }
  }

  handleLoginPage() {
    Get.back();
  }

  handlePrivite(bool value) {
    privateStatus.value = value;
  }

  // 注册
  handleRegister() async{
    final emailRes = !RegCore.emailReg.hasMatch(account.value);
    final passwrodRes = !RegCore.passwrodReg.hasMatch(passwrod.value);
    if (emailRes) {
      accountStatus.value = true;
    }

    if (passwrodRes) {
      passwordStatus.value = true;
    }

    if (emailRes || passwrodRes) {
      return;
    }
    print(privateStatus.value);
    if (!privateStatus.value) {
      privateKey.currentState?.play();
      return;
    }
    // 注册
    final res = await AppLoginRequest.apiAppLoginPhone(
        UserPhoneLoginParams(phone: account.value, code: passwrod.value));
    GlobalController.to.changeUserMsg(res.data!);

    LogUtil.w("登陆成功___${res.data?.data?.token}");
    HomeMeController.to.getUserData();
    // Get.back();
    GlobalController.to.back();
  }
}
