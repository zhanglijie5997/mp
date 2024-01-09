import 'package:get/get.dart';
import 'package:mp/views/buy/controller/controller.dart';

class BuyBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<BuyController>(() => BuyController());
  }
}