import 'package:get/get.dart';
import 'package:mp/views/realy/controller/controller.dart';

class RealyBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<RealyController>(() => RealyController());
  }
}