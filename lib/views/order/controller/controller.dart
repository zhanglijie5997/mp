import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderController extends GetxController with GetTickerProviderStateMixin{
  late final TabController tabController = TabController(length: 4, vsync: this);
  final tabActive = 0.obs;
}