import 'package:get/get.dart';
import 'package:mp/views/home/components/market/controller/controller.dart';
import 'package:mp/views/home/components/index/controller/controller.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';
import 'package:mp/views/home/components/activity/controller/controller.dart';
import 'package:mp/views/home/controller/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HomeIndexController>(() => HomeIndexController());
    Get.lazyPut<HomeActivityController>(() => HomeActivityController());
    Get.lazyPut<HomeMarketController>(() => HomeMarketController());
    Get.lazyPut<HomeMeController>(() => HomeMeController());
  }
}
