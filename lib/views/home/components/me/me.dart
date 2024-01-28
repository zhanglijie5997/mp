import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.authentication.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/components/custom.nodata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/utils/toast.utils.dart';
import 'package:mp/views/home/components/me/components/pageview.item.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';

class HomeMePage extends GetView<HomeMeController> {
  final img =
      "https://static.ibox.art/file/oss/test/image/nft-goods/144ea876bf184bb180b9be8c7626e132.png?style=st6";

  const HomeMePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 375.5,
              width: context.mediaQuerySize.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.assetsImagesMeMeBg),
                    fit: BoxFit.fill
                  )
              ),
              // color: Colors.red,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(0),
              // padding: const EdgeInsets.only(top: 10, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 16),
                    child: Text("我的", style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 23, fontWeight: FontWeight.bold
                    )),
                  ),
                  /// 个人信息
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 16),
                    child: Row(
                      children: [
                        // 头像
                         Container(
                            width: 60, height: 60,
                            decoration: BoxDecoration(
                              borderRadius: 30.radius,
                              border: Border.all(
                                width: 1, color: context.customTheme?.navbarBg ?? Colors.transparent,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(188, 185, 204, 0.5),
                                  offset: Offset(0, 2),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: UnconstrainedBox(
                              child: ClipRRect(
                                borderRadius: 30.radius,
                                child:CustomImage(
                                url: "https://cos.yanjie.art/login/1698876641784233984.png",
                                size: Size(58, 58),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        // 用户信息，未登陆显示登陆/注册
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CustomAuthenticationWidget(
                            loginWidget: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("测试一号", style: context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 18, fontWeight: FontWeight.w600
                                    )),
                                    Container(
                                      margin: const EdgeInsets.only(left: 8),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 2
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: 50.radius,
                                        color: context.customTheme?.fontColor
                                      ),
                                      child: Text('未实名', style: context.textTheme.bodyMedium?.copyWith(
                                          fontSize: 11, color: context.customTheme?.navbarBg
                                      )),
                                    )
                                    // SvgPicture.asset(
                                    //   Assets.assetsImagesSvgIconCopy,
                                    //   width: 13, height: 13,
                                    //   color: Colors.red,
                                    // )
                                  ],
                                ),

                              //   钱包地址
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Row(
                                    children: [
                                      Text("区块链地址：254d4e4rerr4t4414c11df4", style: context.textTheme.bodyMedium?.copyWith(
                                        color: context.customTheme?.gray3, fontSize: 13
                                      )),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 3.0),
                                        child: SvgPicture.asset(
                                          Assets.assetsImagesSvgIconCopy,
                                          width: 13, height: 13,
                                        ),
                                      )
                                    ],
                                  ),
                                ).onTap(() {
                                  EventUtils.saveToClipboard("254d4e4rerr4t4414c11df4");
                                  ToastUtils.show(LocaleKeys.copySuccess.tr);
                                })
                              ],
                            ),
                            notLoginWidget: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text("登陆/注册", style: context.textTheme.bodyMedium?.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w600
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 22),
                    child: Row(
                      children: controller.list.map((element) => Expanded(
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              element.svgPath!,
                              width: 28, height: 28,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Text(element.name ?? "", style: context.textTheme.bodyMedium?.copyWith(
                                fontSize: 11
                              )),
                            )
                          ],
                        ).onTap(() {
                          if (element.url != null) {
                            if (element.url?.isNotEmpty ?? false) {
                              Get.toNamed(element.url!);
                            }
                          }
                        }),
                      )).toList(),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: MediaQuery.removePadding(
                                        context: context,
                                        child: TabBar(tabs: controller.tabList.map((element) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 0
                                          ),
                                          child: Text(element.name ?? "", style: context.textTheme.bodyMedium?.copyWith(
                                            fontSize: 14
                                          )),
                                        )).toList(), 
                                          controller: controller.tabController, 
                                          isScrollable: true,
                                          tabAlignment: TabAlignment.start,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: SvgPicture.asset(
                                        Assets.assetsImagesSvgIconMeSearch,
                                        width: 20, height: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: controller.tabController,
                            children: [
                              MePageViewItem(status: 0,),
                              MePageViewItem(status: 1,),
                              MePageViewItem(status: 2,),
                              MePageViewItem(status: 3,),
                            ]
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
