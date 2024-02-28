import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/generated/locales.g.dart';

class TabsList {
  String? name;
  String? value;

  TabsList({this.name, this.value});

  TabsList.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

class OrderController extends GetxController with GetTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 4, vsync: this);
  final tabActive = 0.obs;

  final List<TabsList> tabsList = [
    TabsList(name: LocaleKeys.all, value: ""),
    TabsList(name: LocaleKeys.progressIn, value: "1"),
    TabsList(name: LocaleKeys.finished, value: "2"),
    TabsList(name: LocaleKeys.cancel, value: "3"),
  ];
}
