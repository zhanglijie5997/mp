import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/me/controller/controller.dart';

class MePage extends GetView<MeController> {
  const MePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    appBar: AppBar(title: const Text('MePage')),

    body: const SizedBox());
  }
}