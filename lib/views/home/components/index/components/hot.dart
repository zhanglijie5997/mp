import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
/// 热门藏品
class IndexHot extends StatefulWidget {
  const IndexHot({super.key});

  @override
  State<IndexHot> createState() => _IndexHotState();
}

class _IndexHotState extends State<IndexHot> {

  late final ScrollController controller = ScrollController();

  final img = "https://psc2.cf2.poecdn.net/eb2fac5718d45c40206067bcb301c24b21014b9d/_next/static/media/chatGPTAvatar.04ed8443.png 1x, https://psc2.cf2.poecdn.net/eb2fac5718d45c40206067bcb301c24b21014b9d/_next/static/media/chatGPTAvatar.04ed8443.png 2x";

  listener() {
    if(controller.offset == controller.position.maxScrollExtent) {
      controller.jumpTo(0);
      jump();
    }
  }

  jump() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.animateTo(controller.position.maxScrollExtent, duration: 40.seconds, curve: Curves.linear);
      
      
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
      shrinkWrap: true,
      itemBuilder: (c, i) => Container(
        margin: const EdgeInsets.only(right: 17),
        width: 74, height: 74,
        decoration: BoxDecoration(
          color: context.customTheme?.card,
          borderRadius: 25.radius
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImage(url: img, size: const Size(54, 54),)
          ],
        )
      ));
  }
}
