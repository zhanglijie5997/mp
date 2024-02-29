import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/models/api_announcement_detail_model/api_announcement_detail_model.dart';

class AnnouncementDetailController extends GetxController {
  // 公告 ID
  final id = Get.parameters["id"];
  final title = (Get.parameters['title'] ?? "").decode();

  final data = (const ApiAnnouncementDetailModel()).obs;

  getData() async {
    final res = await HomeRequest.apiAnnouncementDetail(
      GlobalController.to.currentUserMsg.value.data?.id ?? "",
      id ?? "",
    );
    data.value = res.data!;
  }

  @override
  void onReady() {
    getData();
    super.onReady();
  }
}
