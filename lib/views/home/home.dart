import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/home/components/navbar.dart';
import 'package:mp/views/home/controller/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('HomePage')),
        body: SafeArea(
            child: GestureDetector(
                onTap: () {
                  controller.setCount();
                },
                child: Obx(() => Text('${controller.count}')
            )
        ),

      ),
      bottomNavigationBar: NavBar(navbar: controller.tabbar)
    );
  }
}
