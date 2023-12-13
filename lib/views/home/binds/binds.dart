import 'package:get/get.dart';
import 'package:mp/views/home/components/add/controller/controller.dart';
import 'package:mp/views/home/components/index/controller/controller.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';
import 'package:mp/views/home/components/search/controller/controller.dart';
import 'package:mp/views/home/controller/controller.dart';

class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController());
  Get.lazyPut<HomeIndexController>(() => HomeIndexController());
  Get.lazyPut<HomeAddController>(() => HomeAddController());
  Get.lazyPut<HomeSearchController>(() => HomeSearchController());
  Get.lazyPut<HomeMeController>(() => HomeMeController());
  }
}