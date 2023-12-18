import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.action.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/services/language/language.services.dart';
import 'package:mp/services/theme/theme.services.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';

class HomeMePage extends GetView<HomeMeController> {
  final img = "https://static.ibox.art/file/oss/test/image/nft-goods/144ea876bf184bb180b9be8c7626e132.png?style=st6";

  const HomeMePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => CustomScrollView(
          controller: controller.scrollController,
          // physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: controller.expandedHeight.value + controller.scrollHeight.value ,
              toolbarHeight: 44,
              backgroundColor: context.customTheme?.dark2,
              snap: false,
              floating: false,
              pinned: true,
              flexibleSpace:  FlexibleSpaceBar(
                expandedTitleScale: 1,
                stretchModes: const [StretchMode.blurBackground],
                centerTitle: true,
                title: Opacity(
                  opacity: controller.opacity.value,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: ClipRRect(
                          borderRadius: 30.radius,
                          child: CustomImage(url: img, size: const Size(30, 30),)),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 100
                        ),
                        margin: const EdgeInsets.only(left: 15),
                        child: Text("测试一号", style: context.textTheme.bodyMedium?.copyWith(
                          color: context.customTheme?.fontColor,
                          overflow: TextOverflow.ellipsis
                        )),
                      ),
                    ],
                  ),
                ),
                background: Transform.scale(
                      scale: (controller.expandedHeight.value + controller.scrollHeight.value) / controller.expandedHeight.value,
                      child: CustomImage(url: img, fit: BoxFit.cover, size: Size(double.infinity,  controller.expandedHeight.value + controller.scrollHeight.value ),)),
                ),
            ),

            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    // 订单
                    CustomAction(
                      left: Text(LocaleKeys.order.tr, style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 14
                      )),
                      right: const Icon(Icons.arrow_right_alt_outlined, ),
                    ),
                    // 语言切换
                    CustomAction(
                      left: Text(LocaleKeys.langChange.tr, style: context.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 14
                      )),
                      right: SizedBox(
                        height: 25,
                        child: CupertinoSwitch(
                            activeColor: context.theme.primaryColor,
                            value: LanguageServices.to.langCode.value == "zh", onChanged: (value) {
                              LanguageServices.to.handleSetLang(LanguageServices.to.langCode.value == "zh" ? 'en' : 'zh');
                        }),
                      ),
                    ),

                    // 主题切换
                    CustomAction(
                      left: Text(LocaleKeys.theme.tr, style: context.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 14
                      )),
                      right: SizedBox(
                        height: 25,
                        child: CupertinoSwitch(
                            activeColor: context.theme.primaryColor,
                            value: ThemeServices.to.model.value == "dark", onChanged: (value) {
                              ThemeServices.to.handleSetTheme(ThemeServices.to.model.value == "dark" ? "light":"dark");
                        }),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}