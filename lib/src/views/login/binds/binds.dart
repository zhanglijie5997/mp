import 'package:get/get.dart';
import 'package:mp/src/views/login/controller/controller.dart';

class LoginBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<LoginController>(() => LoginController());
  }
}