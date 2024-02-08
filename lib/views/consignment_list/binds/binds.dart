import 'package:get/get.dart';
import 'package:mp/views/consignment_list/controller/controller.dart';

class ConsignmentBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ConsignmentController>(() => ConsignmentController());
  }
}