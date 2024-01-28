import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/views/buy/controller/controller.dart';

class BuyPage extends GetView<BuyController> {
  const BuyPage({super.key});
  final img =
      "https://cos.yanjie.art/exhibition/paint/setting/1719231731908870144.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text("购买",
            style: context.textTheme.bodyMedium?.copyWith(fontSize: 18)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  color: context.theme.cardColor, borderRadius: 8.radius),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: 6.radius,
                      child: CustomImage(url: img, size: const Size(50, 50))),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                        "测试一号测试一号测试一号测试一号测试一号测试一号测试一号测试一号测试一号",
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                overflow:
                                                    TextOverflow.ellipsis)),
                                  ),
                                ],
                              ),
                              // 加减操作
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              borderRadius: 6.radius,
                                              border: Border.all(
                                                  width: 1,
                                                  color: context
                                                          .customTheme?.gray3 ??
                                                      Colors.white)),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              Assets
                                                  .assetsImagesSvgIconIconIconCut,
                                              width: 20,
                                              height: 20,
                                              // ignore: deprecated_member_use
                                              color: context
                                                  .textTheme.bodyMedium?.color,
                                            ),
                                          ),
                                        ).onTap(() => controller.add(-1)),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Obx(
                                            () => Text(
                                              "${controller.number.value}",
                                              style: context
                                                  .textTheme.bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              borderRadius: 6.radius,
                                              border: Border.all(
                                                  width: 1,
                                                  color: context
                                                          .customTheme?.gray3 ??
                                                      Colors.white)),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              Assets.assetsImagesSvgIconAdd,
                                              width: 20,
                                              height: 20,
                                              color: context
                                                  .textTheme.bodyMedium?.color,
                                            ),
                                          ),
                                        ).onTap(() => controller.add(1)),
                                      ],
                                    ),

                                    // 单价
                                    Text("单价: ¥100",
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                                color:
                                                    context.customTheme?.gray3,
                                                fontWeight: FontWeight.bold))
                                  ],
                                ),
                              )
                            ],
                          )))
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(top: 8.0, bottom: context.mediaQueryPadding.bottom),
        child: ClipRRect(
          child: Container(
            color: context.theme.scaffoldBackgroundColor.withOpacity(.1),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Obx(
                    () => Text("总价 ¥${controller.number.value * 100}",
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: 12.radius,
                        color: context.customTheme?.card),
                    child: Text("购买",
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
