import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/components/custom.loading.dart';
import 'package:mp/components/custom.refresh.header.dart';
import 'package:mp/components/custom.vip.text.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/details/controller/controller.dart';
import 'dart:math' as math;
class DetailPage extends GetView<DetailsController> {
  const DetailPage({super.key});
  final img = "https://static.ibox.art/file/oss/test/image/nft-goods/144ea876bf184bb180b9be8c7626e132.png?style=st6";

  @override
  String? get tag => Get.parameters["id"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Obx(
          () => CustomRefreshIndicator(
            onRefresh: () {
              return EventUtils.sleep(3.seconds);
            },
            builder: (BuildContext context, Widget child, IndicatorController _controller) {
              controller.refreshController ??= _controller;
              return Column(
                children: [
                  Expanded(child: child)
                ],
              );
            },
            child: CustomScrollView(
              controller: controller.scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  expandedHeight: controller.expandedHeight.value + controller.scrollHeight.value ,
                  toolbarHeight: 44,
                  backgroundColor: context.customTheme?.dark2,
                  snap: false,
                  floating: false,
                  pinned: true,
                  leading: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SvgPicture.asset(
                          Assets.assetsImagesSvgIconHeaderBack,
                          width: 24,
                          height: 24,
                          color: context.customTheme?.fontColor,
                        ),
                      ).onTap(() => Get.back()),
                    ],
                  ),
                  actions: [
                     Obx(
                      () => controller.refreshState.value == IndicatorState.idle ? Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: CustomPopup(
                        backgroundColor: context.customTheme?.card,
                        arrowColor: context.customTheme?.card,
                        content: Text('George says everything looks fine'),
                        child: SvgPicture.asset(
                                Assets.assetsImagesSvgIconHeadrMore,
                                color: context.customTheme?.fontColor,
                                width: 20, height: 20,
                              ),
                          )) :  Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Transform.scale(scale: 2.5, child: CustomLoading(size: Size(30, 30),)),
                          ),
                     ) ,
                  ],
                  title: Obx(() => Opacity(
                              opacity:controller.opacity.value,
                              child: Text("一枝梅", style: context.textTheme.bodyMedium?.copyWith(
                                fontSize: 18
                              )),
                            )),
                  flexibleSpace: FlexibleSpaceBar(
                    expandedTitleScale: 1,
                    stretchModes: const [StretchMode.blurBackground],
                    background: Transform.scale(
                      scale: (controller.expandedHeight.value + controller.scrollHeight.value) / controller.expandedHeight.value,
                      child: CustomImage(url: img, fit: BoxFit.cover, size: Size(double.infinity,  controller.expandedHeight.value + controller.scrollHeight.value ),)),
                )
                  ) ,
                SliverToBoxAdapter(
                  child: Container(
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // ClipRRect(
                            //   borderRadius:13.radius,
                            //   child: CustomImage(url: img, size: const Size(double.infinity, 366), fit: BoxFit.fitWidth,)
                            // ),
                            // 图片
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15
                              ),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("一枝梅", style: context.textTheme.bodyLarge?.copyWith(
                                    fontSize: 30, fontWeight:  FontWeight.bold
                                  )),
                                  // 价格
                                  Container(
                                    padding: const EdgeInsets.only(top: 15, left: 10, right: 5),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5.0, right: 4),
                                          child: Text("市价",style: context.textTheme.bodyMedium?.copyWith(
                                            fontSize: 12, fontWeight: FontWeight.bold,
                                            color: context.customTheme?.gray3
                                          )),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 4.0, right: 4),
                                          child:Text('¥', style: context.textTheme.bodyMedium?.copyWith(fontSize: 12, fontWeight: FontWeight.bold),)
                                        ),
                                        Text("100",style: context.textTheme.bodyMedium?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),),
                                      ],
                                    ))
                                ],
                              ),
                            ),

                            // 创作者
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: 30.radius,
                                  child: CustomImage(url: img, size: const Size(30, 30))
                                ),
                                const SizedBox(width: 10,),
                                Text(LocaleKeys.creator.tr, style: context.textTheme.bodyMedium?.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.bold
                                )),
                                const SizedBox(width: 5,),
                                const CustomVipText(name: "XP",)
                              ],
                            ),

                            // 信息
                            // Container(
                            //   constraints: BoxConstraints(
                            //     minHeight: 850
                            //   ),
                            //   // height: 600,
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),

                )

              ]

            ),
          ),
      ),



      bottomNavigationBar: SafeArea(
      child: Container(
        color: context.theme.scaffoldBackgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: 12.radius,
                  color: context.customTheme?.card
                ),
                child: Text("购买", textAlign: TextAlign.center, style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 18, fontWeight: FontWeight.bold
                )),
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
}

