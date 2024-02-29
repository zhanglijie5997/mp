import 'package:get/get.dart';
import 'package:mp/views/sell/controller/controlle.dart';

class SellBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SellController>(() => SellController());
  }
}