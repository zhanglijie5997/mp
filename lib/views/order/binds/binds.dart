import 'package:get/get.dart';
import 'package:mp/views/order/controller/controller.dart';

class OrderBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderController>(() => OrderController());
  }
}
