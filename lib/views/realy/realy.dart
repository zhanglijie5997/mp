import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/realy/controller/controller.dart';

class RealyPage extends GetView<RealyController> {
  const RealyPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('RealyPage')),

    body: SafeArea(
      child: Text('RealyController'))
    );
  }
}
