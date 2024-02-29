import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/views/announcement_detail/controller/controller.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class AnnouncementDetailPage extends GetView<AnnouncementDetailController> {
  const AnnouncementDetailPage({super.key});

  @override
  String? get tag => Get.parameters["id"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(header: controller.title),
        body: SingleChildScrollView(
          child: Obx(() => Padding(
                padding: const EdgeInsets.all(10.0),
                child: HtmlWidget((controller.data.value.data?.content ?? "")
                    .replaceAll("height: auto", "height: 200px")),
              )),
        ));
  }
}
