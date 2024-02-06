import 'package:get/get.dart';
import 'package:mp/views/announcement_detail/controller/controller.dart';

class AnnouncementDetailBinding implements Bindings {
  @override
  void dependencies() {
    final params = Get.parameters;
    Get.lazyPut<AnnouncementDetailController>(
        () => AnnouncementDetailController(),
        tag: params['id']);
  }
}
