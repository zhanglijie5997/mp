import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/announcement/component/tabview.dart';
import 'package:mp/views/announcement/controller/controller.dart';

class AnnouncementPage extends GetView<AnnouncementController> {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(header: "公告"),
        body: Column(
          children: [
            // 搜索输入框
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              decoration: BoxDecoration(
                  borderRadius: 12.radius,
                  color: context.customTheme?.marketSearchBg,
                  border: Border.all(
                      width: 1,
                      color:
                          context.customTheme?.navbarBg ?? Colors.transparent)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.assetsImagesSvgIconMarketSearch,
                    width: 23,
                    height: 23,
                  ),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '请输入公告名称搜索',
                          ),
                          style: context.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w500),
                        )
                        // Text("搜索藏品/盲盒",
                        //     style: context.textTheme.bodyMedium?.copyWith(
                        //         fontSize: 13, color: context.customTheme?.gray3)),
                        ),
                  )
                ],
              ),
            ),

            // Tab导航
            Obx(() {
              return controller.tabData.value.data != null
                  ? TabBar(
                      labelPadding:
                          const EdgeInsets.only(left: 12, right: 0, top: 5),
                      tabAlignment: TabAlignment.start,
                      controller: controller.tabController,
                      indicatorColor: Colors.transparent,
                      tabs: (controller.tabData.value.data ?? [])
                          .mapIndexed((i, e) => Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: controller.tabSelect.value != i
                                        ? context.customTheme?.navbarBg
                                        : context.customTheme?.fontColor,
                                    borderRadius: 25.radius,
                                    boxShadow: const [
                                      BoxShadow(
                                        color:
                                            Color.fromRGBO(236, 236, 241, 0.6),
                                        offset: Offset(0, 5),
                                        blurRadius: 25,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                      (controller.tabData.value.data ?? [])[i]
                                              .name ??
                                          "",
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                        fontSize: 14,
                                        color: controller.tabSelect.value == i
                                            ? context.customTheme?.navbarBg
                                            : context.customTheme?.fontColor,
                                      ))
                                  // Text((controller.tabData.value.data ?? [])[i].name ?? ""),
                                  ).onTap(() {
                                controller.tabSelect.value = i;
                              }))
                          .toList(),
                      isScrollable: true,
                    )
                  : const SizedBox();
            }),

            Expanded(
                child: Obx(
              () => controller.tabData.value.data != null
                  ? TabBarView(
                      controller: controller.tabController,
                      children: (controller.tabData.value.data ?? [])
                          .mapIndexed((i, e) => AnnouncementTabView(data: e))
                          .toList())
                  : const SizedBox(),
            ))
          ],
        ));
  }
}
