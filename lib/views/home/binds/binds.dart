import 'package:get/get.dart';
import 'package:mp/views/home/controller/controller.dart';

class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController());
  }
}