import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/models/accomoun_model/accomoun_model.dart';
import 'package:mp/models/accomoun_params/accomoun_params.dart';
import 'package:mp/models/home_banner_model/home_banner_model.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/views/home/components/index/components/tabview.dart';

class HomeIndexController extends GetxController {
  static HomeIndexController get to => Get.find<HomeIndexController>();
  final count = 0.obs;
  final collectKey = GlobalKey<IndexTabViewState>();
  final boxKey = GlobalKey<IndexTabViewState>();
  final announcementData = (const AccomounModel()).obs;
  final bannerData = (const HomeBannerModel()).obs;
  Future getAccomoun() async {
    final res = await HomeRequest.apiAnnouncementList(
        const AccomounParams(current: 1, row: 5, type: ""));

    announcementData.value = res.data!;
  }

  Future getBannerData() async {
    final res = await HomeRequest.apiRotationChartSelectRotationChartList();
    bannerData.value = res.data!;
  }

  onRefresh() {
    LogUtil.w("refresh");
    collectKey.currentState?.getData();
    boxKey.currentState?.getData();
    return Future.wait([getBannerData(), getAccomoun()]);
  }

  @override
  void onInit() {
    LogUtil.w(1);
    getAccomoun();
    getBannerData();
    super.onInit();
  }
}
