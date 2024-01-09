import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/views/buy/components/normal.dart';
import 'package:mp/views/buy/controller/controller.dart';

class BuyPage extends GetView<BuyController> {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        title: Text("购买", style: context.textTheme.bodyMedium?.copyWith(
          fontSize: 18
        )),
      ),
      body: SingleChildScrollView(
        child: BuyNormal(),
      ));
  }
}