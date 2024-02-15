import 'dart:ui';

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/components/custom.loading.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/consignment_list/controller/controller.dart';

import '../../services/theme/theme.services.dart';

class ConsignmentPage extends GetView<ConsignmentController> {
  const ConsignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomRefreshIndicator(
        onRefresh: () {
          return EventUtils.sleep(3.seconds);
        },
        builder: (BuildContext context, Widget child,
            IndicatorController indicatorController) {
          controller.refreshController ??= indicatorController;
          return Column(
            children: [Expanded(child: child)],
          );
        },
        child: Obx(() {
          return CustomScrollView(
              controller: controller.scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                    systemOverlayStyle: ThemeServices.to.systemOverlay,
                    expandedHeight: controller.expandedHeight.value + controller.scrollHeight.value,
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
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: context.customTheme?.fontColor,
                            )).onTap(() => Get.back()),
                      ],
                    ),
                    actions: [
                      Obx(
                        () => controller.refreshState.value ==
                                IndicatorState.idle
                            ? Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: CustomPopup(
                                  backgroundColor: context.customTheme?.card,
                                  arrowColor: context.customTheme?.card,
                                  content: const Text(
                                      'George says everything looks fine'),
                                  child: SvgPicture.asset(
                                    Assets.assetsImagesSvgIconHeadrMore,
                                    // ignore: deprecated_member_use
                                    color: context.customTheme?.fontColor,
                                    width: 20, height: 20,
                                  ),
                                ))
                            : Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Transform.scale(
                                    scale: 2.5,
                                    child: const CustomLoading(
                                      size: Size(30, 30),
                                    )),
                              ),
                      ),
                    ],
                    title: Obx(() => Opacity(
                          opacity: controller.opacity.value,
                          child: Text(controller.detail.value.productName ?? "",
                              style: context.textTheme.bodyMedium
                                  ?.copyWith(fontSize: 18)),
                        )),
                    flexibleSpace: FlexibleSpaceBar(
                      expandedTitleScale: 1,
                      stretchModes: const [StretchMode.blurBackground],
                      background: Transform.scale(
                          scale: (controller.expandedHeight.value +
                                  controller.scrollHeight.value) /
                              controller.expandedHeight.value,
                          child: Obx(() {
                            return Stack(
                              children: [
                                CustomImage(
                                  url: controller.detail.value.productCover ??
                                      "",
                                  fit: BoxFit.cover,
                                  size: Size(
                                      double.infinity,
                                      controller.expandedHeight.value +
                                          controller.scrollHeight.value),
                                ),
                                BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaY: 50,
                                    sigmaX: 50,
                                  ),
                                  child: Container(
                                    padding:  EdgeInsets.only(
                                        bottom: 29 + controller.scrollHeight.value, left: 29, right: 29),
                                    height: double.infinity,
                                    child: Row(
                                      children: [
                                        // 左侧图片
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1,
                                                color: context.customTheme
                                                        ?.navbarBg ??
                                                    Colors.transparent,
                                              ),
                                              borderRadius: 16.radius),
                                          child: ClipRRect(
                                            borderRadius: 16.radius,
                                            child: CustomImage(
                                              url: controller.detail.value
                                                      .productCover ??
                                                  "",
                                              fit: BoxFit.cover,
                                              size: const Size(61, 61),
                                            ),
                                          ),
                                        ),
                                        // 右侧信息
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                controller.detail.value
                                                        .productName ??
                                                    "",
                                                style: context
                                                    .textTheme.bodyMedium
                                                    ?.copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: context
                                                            .customTheme
                                                            ?.navbarBg),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 12,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 6,
                                                          vertical: 2),
                                                      child: Text(
                                                          "发行${controller.detail.value.issueNumber ?? ""}份",
                                                          style: context
                                                              .textTheme
                                                              .bodyMedium
                                                              ?.copyWith(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: context
                                                                      .customTheme
                                                                      ?.navbarBg)),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            width: 1,
                                                            color: context
                                                                    .customTheme
                                                                    ?.navbarBg ??
                                                                Colors
                                                                    .transparent,
                                                          ),
                                                          borderRadius:
                                                              4.radius),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 10),
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 6,
                                                          vertical: 2),
                                                      child: Text(
                                                          "流通${controller.detail.value.circulateNumber ?? ""}份",
                                                          style: context
                                                              .textTheme
                                                              .bodyMedium
                                                              ?.copyWith(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: context
                                                                      .customTheme
                                                                      ?.navbarBg)),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            width: 1,
                                                            color: context
                                                                    .customTheme
                                                                    ?.navbarBg ??
                                                                Colors
                                                                    .transparent,
                                                          ),
                                                          borderRadius:
                                                              4.radius),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                          ),
                                        )
                                      ],
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          })),
                    )),

                SliverFillRemaining(
                  child: Obx(() {
                    return Container(

                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text("价格排序", style: context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 14,
                                    )),

                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 33.7),
                                  child: Row(
                                    children: [
                                      Text("编号排序", style: context.textTheme.bodyMedium?.copyWith(
                                        fontSize: 14,
                                      )),
                                    ],
                                  ),
                                ),
                               ],
                            ),
                          ),
                          // Text("${controller.data.value.rows?.length}"),
                          Expanded(
                            child: CustomLoadData(
                              top: 200,
                              physics: const ClampingScrollPhysics(),
                              child: ListView.builder(
                                physics: const ClampingScrollPhysics(),
                                // physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.all(0),
                                itemCount: controller.data.value.rows?.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: const EdgeInsets.fromLTRB(
                                      12, 0, 12, 12
                                    ),
                                    // height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: 16.radius,
                                      color: context.customTheme?.navbarBg,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.06),
                                          offset: Offset(0, 0),
                                          blurRadius: 20,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Text("寄售", style: context.textTheme.bodyMedium?.copyWith(
                                                      color: context.customTheme?.navbarBg,
                                                    )),
                                                    padding: const EdgeInsets.symmetric(
                                                      vertical: 3, horizontal: 5
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: context.textTheme.bodyMedium?.color,
                                                      borderRadius: 4.radius,

                                                    ),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(

                                              ),
                                              padding: EdgeInsets.symmetric(
                                                vertical: 26, horizontal: 12
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  );
                                },
                              ),
                              length: controller.data.value.rows?.length,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                )
              ]);
        }),
      ),
    );
  }
}
