import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/real/controller/controller.dart';

class RealPage extends GetView<RealController> {
  const RealPage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('RealPage')),

    body: SafeArea(
      child: Text('RealController'))
    );
  }
}