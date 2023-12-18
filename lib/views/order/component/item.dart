import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/extension/num.ext.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({super.key});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: 5.radius
      ),
      child: Column(
        children: [

        ],
      ),
    );
  }
}
