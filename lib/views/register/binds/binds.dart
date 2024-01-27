import 'package:get/get.dart';
import 'package:mp/views/register/controller/controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
