import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/announcement_detail/controller/controller.dart';

class AnnouncementDetailPage extends GetView<AnnouncementDetailController> {
  const AnnouncementDetailPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('AnnouncementDetailPage')),

    body: SafeArea(
      child: Text('AnnouncementDetailController'))
    );
  }
}