import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/views/details/controller/controller.dart';

class DetailPage extends GetView<DetailsController> {
  const DetailPage({super.key});

  @override
  String? get tag => Get.parameters["id"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: CustomAppBar(
      title: Text("一枝梅", style: context.textTheme.bodyMedium?.copyWith(
        fontSize: 18
      )),
    ),

    body: SafeArea(
      child: Text('${controller.params}'))
    );
  }
}

