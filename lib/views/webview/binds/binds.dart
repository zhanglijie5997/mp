import 'package:get/get.dart';
import 'package:mp/views/webview/controller/controller.dart';

class AppWebviewBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<AppWebviewController>(() => AppWebviewController());
  }
}