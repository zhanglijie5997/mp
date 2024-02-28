import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/views/pay/controller/controller.dart';

class PayPage extends GetView<PayController> {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          header: "支付",
        ),
        body: Obx(() => Column(
              children: [
                Text("${controller.orderDetail.value.data?.actualAmount}")
              ],
            )));
  }
}
