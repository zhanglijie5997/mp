import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.nodata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/home/components/activity/controller/controller.dart';

class HomeActivityPage extends GetView<HomeActivityController> {
  const HomeActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          background: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              LocaleKeys.activity.tr,
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
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal:  16.5),
          child: CustomRefresh(
            refresh: () {
              return EventUtils.sleep(3.seconds);
            },
            child: NestedScrollView(
                headerSliverBuilder: (c, child) {
                  return [
                  ];
                },
                body: CustomNoData()
              // ListView.builder(
              //   physics: const ClampingScrollPhysics(),
              //   itemBuilder: (c, i) => Text("i")),
            ),
          ),
        )
    );
  }
}
