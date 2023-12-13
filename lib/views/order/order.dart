import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/order/controller/controller.dart';

class OrderPage extends GetView<OrderController> {
  const OrderPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('OrderPage')),

    body: SafeArea(
      child: Text('OrderController'))
    );
  }
}