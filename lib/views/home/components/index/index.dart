import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
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

class _HomeIndexPageState extends State<HomeIndexPage> with AutomaticKeepAliveClientMixin{
  final controller = HomeController.to;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: SafeArea(
          child:  CustomRefreshIndicator(
            offsetToArmed: 100,
            autoRebuild: false,
            onRefresh: () {
              return EventUtils.sleep(3000.milliseconds);
            },
            builder: (BuildContext context, Widget child, IndicatorController controller) {
              return Column(
                children: [
                  CustomRefreshHeader(controller: controller,),
                  Expanded(child: child)
                ],
              );
            },
            child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    children: [
                      // 热门
                      Container(
                        padding: const EdgeInsets.only(top: 16),
                        height: 90,
                        width: double.infinity,
                        child: const IndexHot()),


                      // 公告
                      Container(
                        margin: const EdgeInsets.only(top: 16, left: 13, right: 13),
                        decoration: BoxDecoration(
                          color: context.customTheme?.card,
                          borderRadius: 10.radius
                        ),
                        width: double.infinity,
                        height: 50,
                        child: Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: ShakeAnimationWidget(
                                //微旋转的抖动
                                shakeAnimationType: ShakeAnimationType.RoateShake,
                                //设置不开启抖动
                                isForward: true,
                                //默认为 0 无限执行
                                shakeCount: 0,
                                //抖动的幅度 取值范围为[0,1]
                                shakeRange: 0.4,

                                //执行抖动动画的子Widget
                                child: SvgPicture.asset(
                                  Assets.assetsImagesSvgIconIconBell,
                                  width: 20, height: 20,
                                  // ignore: deprecated_member_use
                                  color: context.customTheme?.fontColor,
                                ),
                              )),
                            const Expanded(child: IndexAnnouncement())
                          ],
                        )
                      ),

                      // 首发
                      IndexFirst(label: LocaleKeys.firstCollection.tr,),
                      // 精选
                      IndexFirst(label: LocaleKeys.selectedCollection.tr,),
                      // 交易区块
                      const IndexTradeHex().onTap(() => Get.toNamed("${AppRoutes.webview}?url=${'https://www.baidu.com'.encode()}")),
                    ],
                  ),
                ),
              ),
          ),
          ),
        );
  }
  
  @override
  bool get wantKeepAlive => true;
}
