import 'package:get/get.dart';
import 'package:mp/views/setting/controller/controller.dart';

class SettingBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SettingController>(() => SettingController());
  }
}