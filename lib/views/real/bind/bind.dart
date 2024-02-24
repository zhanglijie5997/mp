import 'package:get/get.dart';
import 'package:mp/views/real/controller/controller.dart';

class RealBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RealController>(() => RealController());
  }
}
