import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/utils/log.utils.dart';

class ActivityData {
  String? name;
  String? svgPath;
  String? url;
  int? type;

  ActivityData({this.name, this.svgPath, this.url, this.type});

  ActivityData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    svgPath = json['svgPath'];
    url = json['url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['svgPath'] = svgPath;
    data['url'] = url;
    data['type'] = type;
    return data;
  }
}

class HomeActivityController extends GetxController {
  static HomeActivityController get to => Get.find<HomeActivityController>();
  final list = [
    ActivityData(
      name: LocaleKeys.everyDayTask,
      svgPath: Assets.assetsImagesSvgIconTask,
      url: "https://blog.p2hp.com/archives/6605",
      type: 2,
    ),
    ActivityData(
      name: LocaleKeys.pointsMall,
      svgPath: Assets.assetsImagesSvgIconIntegra,
      url: "https://www.baidu.com",
      type: 2,
    ),
    ActivityData(
      name: LocaleKeys.everyDayAnnouncement,
      svgPath: Assets.assetsImagesSvgIconEveryDayNotify,
      url: "https://www.baidu.com",
      type: 2,
    ),
    ActivityData(
      name: LocaleKeys.inviteFriends,
      svgPath: Assets.assetsImagesSvgIconInvite,
      url: AppRoutes.invite,
      type: 1,
    ),
  ].cast<ActivityData>().obs;

  getListData() async {
    final res = await HomeRequest.apiHomePositionSelectNftHomePositionList();
    LogUtil.w(res.data);

    LogUtil.w("getListData");
  }

  @override
  void onInit() {
    getListData();
    super.onInit();
  }
}
