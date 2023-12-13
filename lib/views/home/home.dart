import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/home/components/navbar.dart';
import 'package:mp/views/home/controller/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
          padEnds: false,
          allowImplicitScrolling: true,
          controller: controller.tabController,
          pageSnapping: false,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.tabView.length,
          itemBuilder: (c, i) => controller.tabView[i]
        ),
        bottomNavigationBar: Obx(() => NavBar(
              navbar: controller.tabbar,
              active: controller.active.value,
              change: controller.handleActive,
            )));
  }
}
