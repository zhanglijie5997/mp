import 'package:get/get.dart';
import 'package:mp/views/auth/controller/controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
