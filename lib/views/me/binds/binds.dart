import 'package:get/get.dart';
import 'package:mp/views/me/controller/controller.dart';

class MeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<MeController>(() => MeController());
  }
}