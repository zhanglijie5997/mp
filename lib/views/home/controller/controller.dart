import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/models/home/navbar.model.dart';
import 'package:mp/views/home/components/market/market.dart';
import 'package:mp/views/home/components/index/index.dart';
import 'package:mp/views/home/components/me/me.dart';
import 'package:mp/views/home/components/activity/activity.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  static HomeController get to => Get.find<HomeController>();
  final count = 0.obs;
  final tabbar = [
    NavBarModel(
        name: "首页",
        assets: Assets.assetsImagesHome,
        index: 0,
        assetsActive: Assets.assetsImagesHomeActive),
    NavBarModel(
        name: "搜索",
        assets: Assets.assetsImagesActive,
        index: 1,
        assetsActive: Assets.assetsImagesActiveActive),
    NavBarModel(
        name: "添加",
        assets: Assets.assetsImagesMarket,
        index: 2,
        assetsActive: Assets.assetsImagesMarketActive),
    NavBarModel(
        name: "我的",
        assets: Assets.assetsImagesMe,
        index: 3,
        assetsActive: Assets.assetsImagesMeActive),
  ].cast<NavBarModel>();

  final tabView = [
    const HomeIndexPage(),
    const HomeActivityPage(),
    const HomeMarketPage(),
    const HomeMePage(),
  ];

  final tabController = PageController();

  final tabs = [LocaleKeys.digitalCollection, LocaleKeys.bindBox];

  late final tabsController = TabController(length: 2, vsync: this);

  ///  选中的tab
  final active = 0.obs;
  setCount() {
    count.value++;
    // 手动更新，细粒控制
    update();
  }

  /// 修改tab
  handleActive(int index) {
    active.value = index;
    tabController.jumpToPage(index);
  }
}
