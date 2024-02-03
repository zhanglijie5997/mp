import 'package:get/get.dart';
import 'package:mp/views/order_detail/controller/controller.dart';

class OrderDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailController(), tag: Get.parameters['id']);
  }
}
