import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/models/accomoun_tab_list_model/accomoun_tab_list_model.dart';
import 'package:mp/models/accomoun_tab_list_model/datum.dart';


class AnnouncementController extends GetxController with GetTickerProviderStateMixin{
  static AnnouncementController get to => Get.find<AnnouncementController>();
  final tabData = (const AccomounTabListModel()).obs;
  final tabSelect = 0.obs;
  
  TabController? tabController;

  listener() {
    tabSelect.value = tabController!.index;
  }

  getTabListData() async{
    final res = await HomeRequest.apiAnnouncementTypeSelectAnnouncementTypeList();
    if (res.data?.data!=null) {
      res.data!.data!.insert(0, const Datum(
        name: "全部",
        id: ""
      ));
    }
    tabData.value = res.data!;
    tabController = TabController(length: tabData.value.data?.length ?? 0, vsync: this)..addListener(listener);
  }


  
  @override
  void onReady() {
    getTabListData();
    super.onReady();
  }

  @override
  void onClose() {
    tabController?.removeListener(listener);
    super.onClose();
  }
}