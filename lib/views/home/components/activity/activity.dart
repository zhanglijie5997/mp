import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/components/custom.nodata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
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
            length: 0,
            child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: 18.radius,
                          child: SizedBox(
                            height: 134,
                            child: CustomImage(
                              url: "https://cos.yanjie.art/platform/banner/1713810683965079552.jpg",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Wrap(
                            runSpacing: 13,
                            spacing: 13,
                            children: controller.list.map((element) => Container(
                              width: (context.mediaQuerySize.width - 46) /2,
                              height: 73,
                              decoration: BoxDecoration(
                                borderRadius: 16.radius,
                                color: context.customTheme?.navbarBg
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text(element.name ?? "", style: context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 15, fontWeight: FontWeight.w600
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    child: Container(
                                      width: 50, height: 50,
                                      decoration: BoxDecoration(
                                        color: context.customTheme?.navbarBg,
                                        borderRadius: 50.radius,
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromRGBO(0, 0, 0, 0.06),
                                            offset: Offset(0, 0),
                                            blurRadius: 20,
                                          ),
                                        ],
                                      ),
                                      child: UnconstrainedBox(
                                        child: SvgPicture.asset(
                                          element.svgPath!,
                                          width: 30, height: 30,
                                        ),
                                      ),
                                    ),
                                  )

                                ],
                              ).onTap(() {

                                if (element.type == 1) {
                                  // app 内部页面
                                  Get.toNamed(element.url ?? "");
                                }else {
                                  // webview页面
                                }
                              }),
                            )).toList(),
                          ),
                        )
                      ],
                    )
                    // CustomNoData(),
                  )
                ],
              // ListView.builder(
              //   physics: const ClampingScrollPhysics(),
              //   itemBuilder: (c, i) => Text("i")),
            ),
          ),
        )
    );
  }
}
