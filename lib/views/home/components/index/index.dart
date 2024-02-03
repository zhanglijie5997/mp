import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.nodata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/home/components/index/components/announcement.dart';
import 'package:mp/views/home/components/index/components/banner.dart';
import 'package:mp/views/home/components/index/components/tabs.dart';
import 'package:mp/views/home/components/index/components/tabview.dart';
import 'package:mp/views/home/components/index/controller/controller.dart';
import 'package:mp/views/home/controller/controller.dart';

class HomeIndexPage extends StatefulWidget {
  const HomeIndexPage({super.key});

  @override
  State<HomeIndexPage> createState() => _HomeIndexPageState();
}

class _HomeIndexPageState extends State<HomeIndexPage>
    with AutomaticKeepAliveClientMixin {
  final controller = HomeController.to;
  final indexController = HomeIndexController.to;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: CustomAppBar(
          background: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Meta-U",
              style: context.textTheme.bodyMedium
                  ?.copyWith(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          actions: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset(
              Assets.assetsImagesSvgIconAccounment,
              // ignore: deprecated_member_use
              color: context.customTheme?.fontColor,
              width: 26,
              height: 26,
            ),
          ).onTap(() {
            Get.toNamed(AppRoutes.announcement);
          }),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.5),
          child: CustomRefresh(
            length: 2,
            refresh: () {
              return EventUtils.sleep(3.seconds);
            },
            child: NestedScrollView(
                headerSliverBuilder: (c, child) {
                  return [
                    SliverToBoxAdapter(
                      child: Obx(() =>
                          HomeBanner(data: indexController.bannerData.value)),
                    ),
                    SliverToBoxAdapter(
                      child: Obx(() => IndexAnnouncement(
                          data: indexController.announcementData.value)),
                    ),
                    // 吸顶tabbar
                    SliverPersistentHeader(
                        floating: true,
                        pinned: true,
                        delegate: SliverTabHeader(
                            tabs: controller.tabs,
                            controller: controller.tabsController)),
                  ];
                },
                body: TabBarView(
                  controller: controller.tabsController,
                  children: [IndexTabView(), IndexTabView()],
                )
                // ListView.builder(
                //   physics: const ClampingScrollPhysics(),
                //   itemBuilder: (c, i) => Text("i")),
                ),
          ),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
