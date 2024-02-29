import 'package:get/get.dart';
import 'package:mp/views/featured/controller/controller.dart';

class FeaturedBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<FeaturedController>(() => FeaturedController());
  }
}