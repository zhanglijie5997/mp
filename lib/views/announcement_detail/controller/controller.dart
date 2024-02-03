import 'package:get/get.dart';
import 'package:mp/extension/string.ext.dart';

class AnnouncementDetailController extends GetxController {
  // 公告ID
  final id = Get.parameters["id"];
  final title = (Get.parameters['title'] ?? "").decode();
  @override
  void onReady() {
    super.onReady();
  }
}