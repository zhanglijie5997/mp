import 'package:get/get.dart';
import 'package:mp/views/details/controller/controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    final params = Get.parameters;
    print(params);
    Get.lazyPut<DetailsController>(() => DetailsController(),
        tag: params["id"]);
  }
}
