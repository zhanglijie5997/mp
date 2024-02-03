import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/models/accomoun_tab_list_model/accomoun_tab_list_model.dart';

class AnnouncementController extends GetxController with GetTickerProviderStateMixin{
  final tabData = (const AccomounTabListModel()).obs;
  final tabSelect = 0.obs;
  TabController? tabController;
  getTabListData() async{
    final res = await HomeRequest.apiAnnouncementTypeSelectAnnouncementTypeList();
    tabData.value = res.data!;
    tabController = TabController(length: res.data?.data?.length ?? 0, vsync: this);
  }

  @override
  void onReady() {
    getTabListData();
    super.onReady();
  }
}