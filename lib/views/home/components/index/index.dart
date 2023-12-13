import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/home/components/index/controller/controller.dart';

class HomeIndexPage extends GetView<HomeIndexController> {
  const HomeIndexPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Obx(() => Text('${controller.count.value}'))));
  }
}
