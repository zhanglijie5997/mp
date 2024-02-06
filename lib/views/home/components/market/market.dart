import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/views/home/components/market/components/parent.pageview.dart';
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
            tabs: controller.tabList
                .map((e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(e.name ?? ""),
                    ))
                .toList()),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: controller.tabList
            .mapIndexed((index, p1) => MarketParentPageView())
            .toList(),
      ),
    );
  }
}
