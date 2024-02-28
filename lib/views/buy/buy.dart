import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.checkbox.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/router/routes.dart';
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
        child: Obx(() => Column(
              children: [
                // 藏品信息
                Container(
                  padding: const EdgeInsets.all(12),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: 16.radius,
                    color: context.customTheme?.navbarBg,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(236, 236, 241, 0.6),
                        offset: Offset(0, 5),
                        blurRadius: 25,
                      ),
                    ],
                  ),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: 8.radius,
                      child: CustomImage(
                        url: controller.data.value.data?.productImage ?? "",
                        size: const Size(70, 70),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(controller.data.value.data?.productName ?? "",
                              style: context.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                                controller.data.value.data?.productCode ?? "",
                                style: context.textTheme.bodyMedium?.copyWith(
                                    fontSize: 12,
                                    color: context.customTheme?.gray3)),
                          )
                        ],
                      ),
                    )
                  ]),
                ),

                // 支付方式
                Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: 16.radius,
                      color: context.customTheme?.navbarBg,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(236, 236, 241, 0.6),
                          offset: Offset(0, 5),
                          blurRadius: 25,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: .5,
                                      color: (context.customTheme?.gray3 ??
                                              Colors.transparent)
                                          .withOpacity(.3)))),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                Assets.assetsImagesSvgIconWallet,
                                width: 25,
                                height: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("支付方式",
                                    style: context.textTheme.bodyMedium
                                        ?.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  // bottom: BorderSide(
                                  //   width: .5, color: (context.customTheme?.gray3 ?? Colors.transparent).withOpacity(.3)
                                  // )
                                  )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("连连支付",
                                  style: context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              CustomCheckbox(
                                isSelect: true,
                                onChange: (v) {},
                              )
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            )),
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
                    () => Text("总价 ¥${controller.data.value.data?.price}",
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
                    child: Text("支付",
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ).onTap(() {
                    Get.toNamed(
                        "${AppRoutes.pay}/${controller.params['orderId']}");
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
