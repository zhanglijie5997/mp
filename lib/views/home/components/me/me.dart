import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';

class HomeMePage extends GetView<HomeMeController> {
  final img =
      "https://static.ibox.art/file/oss/test/image/nft-goods/144ea876bf184bb180b9be8c7626e132.png?style=st6";

  const HomeMePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (c, child) {
          return [
            SliverToBoxAdapter(
              child: Container(
                // color: Colors.red,
                height: 258.5 + context.mediaQueryPadding.top,
                child: Stack(
                  children: [
                    Positioned(
                      top: -48,
                      left: -118,
                      child: Container(
                        color: context.customTheme?.meBg,
                        height: 375.5,
                        width: context.mediaQuerySize.width,
                        // color: Colors.red,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaY: 100, sigmaX: 100
                          ),
                          child: const SizedBox(),
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("我的", style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 23, fontWeight: FontWeight.bold
                            )),
                            /// 个人信息
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: 30.radius,
                                  child: Container(
                                    width: 60, height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: 30.radius,
                                      border: Border.all(
                                        width: 1, color: context.customTheme?.navbarBg ?? Colors.transparent,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color.fromRGBO(188, 185, 204, 0.5),
                                          offset: Offset(0, 2),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: UnconstrainedBox(
                                      child: CustomImage(
                                        url: "https://cos.yanjie.art/platform/banner/1713810683965079552.jpg",
                                        size: Size(54, 54),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),

                                // 用户信息，未登陆显示登陆/注册
                              ],
                            )
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            )
          ];
        },
        body: ListView.builder(itemBuilder: (c, i) => Text("i")),
      ),
    );
  }
}
