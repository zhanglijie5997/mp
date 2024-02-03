import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/views/order_detail/controller/controller.dart';

class OrderDetailPage extends GetView<OrderDetailController> {
  const OrderDetailPage({super.key});

  @override
  String? get tag => Get.parameters["id"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("订单详情",
            style: context.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
