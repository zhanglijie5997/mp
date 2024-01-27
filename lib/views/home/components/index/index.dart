import 'dart:ui';

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.refresh.header.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/home/components/index/components/announcement.dart';
import 'package:mp/views/home/components/index/components/first.dart';
import 'package:mp/views/home/components/index/components/hot.dart';
import 'package:mp/views/home/components/index/components/trade.dart';
import 'package:mp/views/home/controller/controller.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';

class HomeIndexPage extends StatefulWidget {
  const HomeIndexPage({super.key});

  @override
  State<HomeIndexPage> createState() => _HomeIndexPageState();
}

class _HomeIndexPageState extends State<HomeIndexPage>
    with AutomaticKeepAliveClientMixin {
  final controller = HomeController.to;
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
              color: context.customTheme?.fontColor,
              width: 26,
              height: 26,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: context.mediaQueryPadding.top),
          child: CustomScrollView(
            slivers: [
              // SliverPersistentHeader(floating: true, delegate: SliverHeader())
            ],
          ),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}

class SliverHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return CustomAppBar(
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
          color: context.customTheme?.fontColor,
          width: 26,
          height: 26,
        ),
      ),
    );
  }

  @override
  double get maxExtent => 88;

  @override
  double get minExtent => 44;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
