import 'package:get/get.dart';
import 'package:mp/core/reg.core.dart';
import 'package:mp/router/routes.dart';

class RegisterController extends GetxController {
  static RegisterController get to => Get.find<RegisterController>();
  final account = "".obs;
  final passwrod = "".obs;
  final accountStatus = false.obs;
  final passwordStatus = false.obs;
  changeCount(String value) {
    account.value = value;
    if (RegCore.emailReg.hasMatch(value)) {
      accountStatus.value = false;
    }
  }

  changePassword(String value) {
    passwrod.value = value;
    if (RegCore.passwrodReg.hasMatch(value)) {
      accountStatus.value = false;
    }
  }

  handleLoginPage() {
    Get.offAndToNamed(AppRoutes.login);
  }

  // 注册
  handleRegister() {
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
    // 注册
  }
}
