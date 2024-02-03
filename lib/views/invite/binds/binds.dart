import 'package:get/get.dart';
import 'package:mp/views/invite/controller/controller.dart';

class InviteBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InviteController>(() => InviteController());
  }
}
