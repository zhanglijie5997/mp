import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/views/order/component/list.dart';
import 'package:mp/views/order/controller/controller.dart';

class OrderPage extends GetView<OrderController> {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: Text("订单中心",
              style: context.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            TabBar(
              controller: controller.tabController,
              tabs: [
                Tab(
                  text: LocaleKeys.all.tr,
                  height: 40,
                ),
                Tab(
                  text: LocaleKeys.finished.tr,
                  height: 40,
                ),
                Tab(
                  text: LocaleKeys.progressIn.tr,
                  height: 40,
                ),
                Tab(
                  text: LocaleKeys.cancel.tr,
                  height: 40,
                ),
              ],
            ),
            Expanded(
                child:
                    TabBarView(controller: controller.tabController, children: [
              OrderPageViewList(),
              OrderPageViewList(),
              OrderPageViewList(),
              OrderPageViewList(),
            ]))
          ],
        )
        // NestedScrollView(
        //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        //     return [
        //       SliverPersistentHeader(
        //         pinned: true,
        //         floating: true,
        //         delegate: StickyHeaderDelegate(
        //             minHeight: 50,
        //             maxHeight: 50,
        //             child:
        //             TabBar(
        //               controller: controller.tabController,
        //               tabs: [
        //                 Tab(text: LocaleKeys.all.tr, height: 40,),
        //                 Tab(text: LocaleKeys.finished.tr, height: 40,),
        //                 Tab(text: LocaleKeys.progressIn.tr, height: 40,),
        //                 Tab(text: LocaleKeys.cancel.tr, height: 40,),
        //               ],
        //             )
        //         ),
        //       )
        //     ];
        // }, body:
        // TabBarView(
        //     controller: controller.tabController,
        //     children: [
        //       OrderPageViewList(),
        //       OrderPageViewList(),
        //       OrderPageViewList(),
        //       OrderPageViewList(),
        //     ]))

        );
  }
}

class StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  StickyHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => maxHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant StickyHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return (maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child);
  }
}
