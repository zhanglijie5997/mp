import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/views/announcement_detail/controller/controller.dart';

class AnnouncementDetailPage extends GetView<AnnouncementDetailController> {
  const AnnouncementDetailPage({super.key});

  @override
  String? get tag => Get.parameters["id"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: CustomAppBar(header: controller.title),

    body: SafeArea(
      child: Text('AnnouncementDetailController'))
    );
  }
}