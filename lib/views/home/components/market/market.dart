import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/home/components/market/components/item.dart';
import 'package:mp/views/home/components/market/components/tab.pageview.dart';
import 'package:mp/views/home/components/market/controller/controller.dart';

class HomeMarketPage extends GetView<HomeMarketController> {
  const HomeMarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.customTheme?.marketBg,
      appBar: CustomAppBar(
        background: Colors.transparent,
        leading: const SizedBox(),
        title: TabBar(
          controller: controller.tabController,
          tabs: controller.tabList.map((e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(e.name ?? ""),
          )).toList()),
      ),
      body: Column(
        children: [
          // 搜索输入框
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 12, horizontal: 16
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12, vertical: 8
            ),
            decoration: BoxDecoration(
              borderRadius: 12.radius,
              color: context.customTheme?.marketSearchBg,
              border: Border.all(
                width: 1, color: context.customTheme?.navbarBg ?? Colors.transparent
              )
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  Assets.assetsImagesSvgIconMarketSearch,
                  width: 23, height: 23,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text("搜索藏品/盲盒", style: context.textTheme.bodyMedium?.copyWith(
                    fontSize: 13, color: context.customTheme?.gray3
                  )),
                )
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.customTheme?.navbarBg,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(236, 236, 241, 0.6),
                    offset: Offset(0, 5),
                    blurRadius: 25,
                  ),
                ],
              ),
              child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Obx(
                            () => TabBar(
                              padding: const EdgeInsets.only(bottom: 5),
                              controller: controller.marketTabController,
                              isScrollable: true,
                              tabAlignment: TabAlignment.start,
                              labelPadding:const EdgeInsets.only(
                                left: 12, right: 0, top: 16
                              ),
                              indicatorColor: Colors.transparent,
                              tabs: controller.marketTabList.mapIndexed((index, element) => Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10
                                ),
                                decoration: BoxDecoration(
                                  color: controller.marketTabSelect.value != index ? context.customTheme?.navbarBg : context.customTheme?.fontColor,
                                  borderRadius: 25.radius,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(236, 236, 241, 0.6),
                                      offset: Offset(0, 5),
                                      blurRadius: 25,
                                    ),
                                  ],
                                ),
                                child: Text(element.name ?? "", style: context.textTheme.bodyMedium?.copyWith(
                                  fontSize: 14, color: controller.marketTabSelect.value == index ? context.customTheme?.navbarBg : context.customTheme?.fontColor,
                                )))
                              ).toList()
                            ),
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          width: 39, height: 37,
                          child: UnconstrainedBox(
                            child: SvgPicture.asset(
                              Assets.assetsImagesSvgIconFilter,
                              width: 18, height: 18,
                            ),
                          ),
                        )
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                    
                    Expanded(
                      child: TabBarView(
                        controller: controller.marketTabController,
                        children: controller.marketTabList.map((element) => MarketTabPageView()).toList(),
                      )
                    )
                  ],
              ),
            )
          )
        ],
      ),
    );
  }
}
