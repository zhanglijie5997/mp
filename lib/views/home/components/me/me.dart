import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';

class HomeMePage extends GetView<HomeMeController> {
  const HomeMePage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
   
    body: SafeArea(
      child:  Text('HomeMePage').onTap(() {
      Get.toNamed(AppRoutes.order);
    }))
    );
  }
}