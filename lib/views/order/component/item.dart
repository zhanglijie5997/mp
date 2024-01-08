import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/router/routes.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({super.key});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  final url = "https://cos.yanjie.art/exhibition/paint/setting/1719231731908870144.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: 5.radius
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: 12.radius,
            child: CustomImage(url: url, size:const Size(64, 98))
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("藏品名称", style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold
                      ),),
                      Text("X2", style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 14,
                      ),)
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("金额 ¥1000", style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 14,
                        ),),
                        Text("2024/1/1 12:00:00", style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 14, color: context.customTheme?.gray3
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ).onTap(() {
      Get.toNamed("${AppRoutes.orderDetail}/23");
    });
  }
}
