import 'package:get/get.dart';
import 'package:mp/views/integration/controller/controller.dart';

class IntegrationBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<IntegrationController>(() => IntegrationController());
  }
}