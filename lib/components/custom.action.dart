import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';

class CustomAction extends StatefulWidget {
  final Widget? left;
  final Widget? right;
  const CustomAction({super.key, this.left, this.right});

  @override
  State<CustomAction> createState() => _CustomActionState();
}

class _CustomActionState extends State<CustomAction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: 10.radius, color: context.theme.cardColor),
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.left ?? const SizedBox(),
          widget.right ?? const SizedBox()
        ],
      ),
    );
  }
}
