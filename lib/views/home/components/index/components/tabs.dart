import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliverTabHeader extends SliverPersistentHeaderDelegate {
  final List<String> tabs;
  final TabController controller;
  SliverTabHeader({required this.tabs, required this.controller});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      color: context.theme.scaffoldBackgroundColor,
      child: TabBar(
          controller: controller,
          tabs: tabs
              .map((e) => Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(e.tr),
                  ))
              .toList()),
    );
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 44;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
