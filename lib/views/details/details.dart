import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/components/custom.loading.dart';
import 'package:mp/components/custom.vip.text.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/services/theme/theme.services.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/details/controller/controller.dart';
import 'dart:ui' as ui;

class DetailPage extends GetView<DetailsController> {
  const DetailPage({super.key});

  final img =
      "https://cos.yanjie.art/exhibition/paint/setting/1719231731908870144.jpg";

  @override
  String? get tag => Get.parameters["id"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Obx(
            () =>
            CustomRefreshIndicator(
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
              child: CustomScrollView(
                  controller: controller.scrollController,
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverAppBar(
                        systemOverlayStyle: ThemeServices.to.systemOverlay,
                        expandedHeight: controller.expandedHeight.value +
                            controller.scrollHeight.value,
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
                                () =>
                            controller.refreshState.value ==
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
                        title: Obx(() =>
                            Opacity(
                              opacity: controller.opacity.value,
                              child: Text(
                                  controller.detail.value.data?.productName ??
                                      "",
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
                                return CustomImage(
                                  url: controller.detail.value.data
                                      ?.productAbbreviateImage ?? "",
                                  fit: BoxFit.cover,
                                  size: Size(
                                      double.infinity,
                                      controller.expandedHeight.value +
                                          controller.scrollHeight.value),
                                );
                              })),
                        )),
                    SliverToBoxAdapter(
                      child: ClipRRect(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(12),
                          right: Radius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15),
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
                                      padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Obx(() {
                                            return Text(
                                                controller.detail.value.data
                                                    ?.productName ?? "",
                                                style: context.textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight
                                                        .bold));
                                          }),
                                          // 价格
                                          Container(
                                              padding: const EdgeInsets.only(
                                                  top: 15, left: 10, right: 5),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .only(
                                                        top: 5.0, right: 4),
                                                    child: Text("市价",
                                                        style: context
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            color: context
                                                                .customTheme
                                                                ?.gray3)),
                                                  ),
                                                  Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          top: 4.0, right: 4),
                                                      child: Text(
                                                        '¥',
                                                        style: context
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      )),
                                                  Text(
                                                    "100",
                                                    style: context
                                                        .textTheme.bodyMedium
                                                        ?.copyWith(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                ],
                                              ))
                                        ],
                                      ),
                                    ),

                                    // 创作者
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      children: [
                                        ClipRRect(
                                            borderRadius: 30.radius,
                                            child: CustomImage(
                                                url: img,
                                                size: const Size(30, 30))),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(LocaleKeys.creator.tr,
                                            style: context.textTheme.bodyMedium
                                                ?.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const CustomVipText(
                                          name: "XP",
                                        )
                                      ],
                                    ),

                                    // 信息
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "A handcrafted collection of 10,000 characters developed by artist DirtyRobot. Each with their own identity to be discovered within the wider stories of RENGA. In its purest form, RENGA is the art of storytelling. ",
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                            fontSize: 14,
                                            color: context
                                                .textTheme.bodyMedium?.color
                                                ?.withOpacity(.7)),
                                      ),
                                      // height: 600,
                                    ),

                                    // 作品简介
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                margin:
                                                const EdgeInsets.only(right: 5),
                                                width: 3,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                    color:
                                                    context.customTheme?.active,
                                                    borderRadius: 4.radius),
                                              ),
                                              Text(LocaleKeys.introduction.tr,
                                                  style: context
                                                      .textTheme.bodyMedium
                                                      ?.copyWith(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold)),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              """
                    A handcrafted collection of 10,000 characters developed by artist DirtyRobot. Each with their own identity to be discovered within the wider stories of RENGA. In its purest form, RENGA is the art of storytelling. 
                                      A handcrafted collection of 10,000 characters developed by artist DirtyRobot. Each with their own identity to be discovered within the wider stories of RENGA. In its purest form, RENGA is the art of storytelling.
                                      A handcrafted collection of 10,000 characters developed by artist DirtyRobot. Each with their own identity to be discovered within the wider stories of RENGA. In its purest form, RENGA is the art of storytelling.
                                      A handcrafted collection of 10,000 characters developed by artist DirtyRobot. Each with their own identity to be discovered within the wider stories of RENGA. In its purest form, RENGA is the art of storytelling.
                                      A handcrafted collection of 10,000 characters developed by artist DirtyRobot. Each with their own identity to be discovered within the wider stories of RENGA. In its purest form, RENGA is the art of storytelling.
                                      A handcrafted collection of 10,000 characters developed by artist DirtyRobot. Each with their own identity to be discovered within the wider stories of RENGA. In its purest form, RENGA is the art of storytelling.
                                      """,
                                              style: context.textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                  fontSize: 14,
                                                  color: context.textTheme
                                                      .bodyMedium?.color
                                                      ?.withOpacity(.7)),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
            ),
      ),
      bottomNavigationBar: Padding(
        padding:
        EdgeInsets.only(top: 8.0, bottom: context.mediaQueryPadding.bottom),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(
              color: context.theme.scaffoldBackgroundColor.withOpacity(.1),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text("¥118",
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: 12.radius,
                          color: context.customTheme?.card),
                      child: Text(LocaleKeys.buy.tr,
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ).onTap(() =>
                        Get.toNamed(
                            "${AppRoutes.buy}/${controller.params["id"]}")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
