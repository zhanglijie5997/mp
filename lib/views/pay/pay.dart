import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/pay/controller/controller.dart';

class PayPage extends GetView<PayController> {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('PayPage')),
        body: SafeArea(child: Text('PayController')));
  }
}
