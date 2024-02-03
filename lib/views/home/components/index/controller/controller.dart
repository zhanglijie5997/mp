import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/models/accomoun_model/accomoun_model.dart';
import 'package:mp/models/accomoun_params/accomoun_params.dart';
import 'package:mp/models/home_banner_model/home_banner_model.dart';
import 'package:mp/utils/log.utils.dart';

class HomeIndexController extends GetxController {
  static HomeIndexController get to => Get.find<HomeIndexController>();
  final count = 0.obs;

  final announcementData = (const AccomounModel()).obs;
  final bannerData = (const HomeBannerModel()).obs;
  getAccomoun() async {
    final res = await HomeRequest.apiAnnouncementList(
        const AccomounParams(current: 1, row: 5));
    announcementData.value = res.data!;
  }

  getBannerData() async {
    final res = await HomeRequest.apiRotationChartSelectRotationChartList();
    bannerData.value = res.data!;
  }

  @override
  void onInit() {
    LogUtil.w(1);
    getAccomoun();
    getBannerData();
    super.onInit();
  }
}
