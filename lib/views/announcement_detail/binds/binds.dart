import 'package:get/get.dart';
import 'package:mp/views/announcement/controller/controller.dart';

class AnnouncementDetailBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<AnnouncementController>(() => AnnouncementController());
  }
}