import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/utils/toast.utils.dart';

/// 热门藏品
class IndexHot extends StatefulWidget {
  const IndexHot({super.key});

  @override
  State<IndexHot> createState() => _IndexHotState();
}

class _IndexHotState extends State<IndexHot> {
  late final ScrollController controller = ScrollController();

  final img =
      "https://static.ibox.art/file/oss/test/image/nft-goods/144ea876bf184bb180b9be8c7626e132.png?style=st6";

  listener() {
    if (controller.offset == controller.position.maxScrollExtent) {
      controller.jumpTo(0);
      jump();
    }
  }

  jump() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.animateTo(controller.position.maxScrollExtent,
          duration: 40.seconds, curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    controller.removeListener(listener);
    super.dispose();
  }

  @override
  void initState() {
    controller.addListener(listener);
    jump();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        itemCount: 20,
        padding: const EdgeInsets.only(left: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, i) => Listener(
              onPointerDown: (e) {
                ToastUtils.showLoading("loading...");
              },
              child: Container(
                  margin: const EdgeInsets.only(right: 17),
                  width: 74,
                  height: 74,
                  decoration: BoxDecoration(
                      color: context.customTheme?.card,
                      borderRadius: 25.radius),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: 13.radius,
                          child: CustomImage(
                            url: img,
                            size: const Size(54, 54),
                          ))
                    ],
                  )),
            ));
  }
}
