import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/views/home/components/activity/controller/controller.dart';

class HomeMeController extends GetxController with GetTickerProviderStateMixin {
  final expandedHeight = (300.0).obs;
  final scrollHeight = (0.0).obs;
  final ScrollController scrollController = ScrollController();
  final opacity = (0.0).obs;
  final list = [
    ActivityData(
        name: "邀请好友",
        url: AppRoutes.invite,
        type: 1,
        svgPath: Assets.assetsImagesSvgIconMeInvite),
    ActivityData(
        name: "订单",
        url: AppRoutes.order,
        type: 1,
        svgPath: Assets.assetsImagesSvgIconMeOrder),
    ActivityData(
        name: "设置",
        url: AppRoutes.setting,
        type: 1,
        svgPath: Assets.assetsImagesSvgIconMeSetting),
    ActivityData(
        name: "钱包",
        url: AppRoutes.wallet,
        type: 1,
        svgPath: Assets.assetsImagesSvgIconMeWallet),
  ].cast<ActivityData>().obs;

  final tabList = [
    ActivityData(
      name: "数字藏品",
      url: "",
      type: 1,
    ),
    ActivityData(
      name: "数字盲盒",
      url: "",
      type: 1,
    ),
    ActivityData(
      name: "我的寄售",
      url: "",
      type: 1,
    ),
    ActivityData(
      name: "已卖出",
      url: "",
      type: 1,
    ),
  ].cast<ActivityData>().obs;

  late final tabController = TabController(length: 4, vsync: this);

  listener() {
    final res = (scrollController.offset / expandedHeight.value);
    // print(scrollController.offset);
    if (scrollController.offset <= 0) {
      scrollHeight.value = -scrollController.offset;
    }
    opacity.value = res >= 1
        ? 1
        : res <= 0
            ? 0
            : res;
  }

  @override
  void onInit() {
    scrollController.addListener(listener);
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.removeListener(listener);
    super.onClose();
  }
}
