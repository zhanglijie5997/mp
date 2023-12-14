import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/views/details/controller/controller.dart';

class DetailPage extends GetView<DetailsController> {
  const DetailPage({super.key});
  final img = "https://static.ibox.art/file/oss/test/image/nft-goods/144ea876bf184bb180b9be8c7626e132.png?style=st6";

  @override
  String? get tag => Get.parameters["id"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: CustomAppBar(
      title: Text("一枝梅", style: context.textTheme.bodyMedium?.copyWith(
        fontSize: 18
      )),
    ),

    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius:13.radius,
              child: CustomImage(url: img, size: Size(double.infinity, 366), fit: BoxFit.fitWidth,)
            ),

            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 15
              ),
              alignment: Alignment.centerLeft,
              child: Text("一枝梅", style: context.textTheme.bodyLarge?.copyWith(
                fontSize: 30, fontWeight:  FontWeight.bold
              )),
            )
          ],
        ),
      ),
    ));
  }
}

