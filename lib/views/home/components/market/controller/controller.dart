import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/utils/log.utils.dart';

class MarketTab {
  String? name;
  int? type;

  MarketTab({this.name, this.type});

  MarketTab.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['type'] = type;
    return data;
  }
}


class HomeMarketController extends GetxController with GetTickerProviderStateMixin{
  final tabList = [
    MarketTab(
      name: "数字藏品",
      type: 0,
    ),
    MarketTab(
      name: "数字盲盒",
      type: 1,
    )
  ].cast<MarketTab>();
  late final tabController = TabController(length: 2, vsync: this);

  final marketTabList = [
    MarketTab(
      name: "我的关注",
      type: 0,
    ),
    MarketTab(
      name: "全部藏品",
      type: 1,
    ),
    MarketTab(
      name: "寄售区",
      type: 2,
    ),
  ].cast<MarketTab>().obs;
  
  final marketTabSelect = 0.obs;  
  late TabController marketTabController = TabController(length: 3, vsync: this)..addListener(marketTabListener);
  marketTabListener() {
    LogUtil.w(marketTabController.index);
    marketTabSelect.value = marketTabController.index;
  }


  @override
  void onClose() {
    marketTabController.removeListener(marketTabListener);
    super.onClose();
  }
}
