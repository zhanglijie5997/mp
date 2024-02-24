import 'package:get/get.dart';
import 'package:mp/views/pay/controller/controller.dart';

class PayBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PayController>(() => PayController());
  }
}
