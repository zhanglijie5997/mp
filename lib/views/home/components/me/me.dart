import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';

class HomeMePage extends GetView<HomeMeController> {
  const HomeMePage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('HomeMePage')),

    body: SafeArea(
      child: Text('HomeMeController'))
    );
  }
}