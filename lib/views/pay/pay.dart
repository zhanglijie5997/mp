import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/components/custom.checkbox.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/views/pay/controller/controller.dart';

class PayPage extends GetView<PayController> {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        header: "支付",
      ),
      body: SizedBox(
        width: double.infinity,
        child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 支付金额
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "¥",
                        style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            " ${controller.orderDetail.value.data?.actualAmount}",
                        style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 32, fontWeight: FontWeight.bold)),
                  ])),
                ),

                // 支付方式
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: context.customTheme?.navbarBg,
                    borderRadius: 12.radius,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(236, 236, 241, 0.6),
                        offset: Offset(0, 5),
                        blurRadius: 25,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("支付方式",
                            style: context.textTheme.bodyMedium
                                ?.copyWith(fontSize: 16)),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: context.customTheme?.gray ??
                                            Colors.transparent))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      Assets.assetsImagesSvgIconWallet,
                                      width: 24,
                                      height: 24,
                                    ),
                                    // 金额
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("钱包支付",
                                              style: context
                                                  .textTheme.bodyMedium
                                                  ?.copyWith(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              "余额：¥${controller.walletAmount.value}",
                                              style: context
                                                  .textTheme.bodyMedium
                                                  ?.copyWith(
                                                      fontSize: 14,
                                                      color: context
                                                          .customTheme?.gray3),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                CustomCheckbox(
                                  isSelect: controller.select.value == -1,
                                  onChange: (value) {
                                    controller.select.value = -1;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        ...(controller.bankInfo.value.data ?? [])
                            .mapIndexed(
                              (i, e) => Padding(
                                padding: const EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color:
                                                  context.customTheme?.gray ??
                                                      Colors.transparent))),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // 金额
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("${e.linkedBrbankname}",
                                                    style: context
                                                        .textTheme.bodyMedium
                                                        ?.copyWith(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0),
                                                  child: Text(
                                                    (e.linkedAcctno ?? "")
                                                        .maskBankCardNumber(),
                                                    style: context
                                                        .textTheme.bodyMedium
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: context
                                                                .customTheme
                                                                ?.gray3),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      CustomCheckbox(
                                        isSelect: controller.select.value == i,
                                        onChange: (value) {
                                          LogUtil.w("value____$value");
                                          controller.select.value = i;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList()
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
      bottomNavigationBar: UnconstrainedBox(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: context.mediaQuerySize.width - 20,
              padding: const EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: context.customTheme?.active,
                borderRadius: 16.radius,
              ),
              alignment: Alignment.center,
              child: Text("立即支付",
                  style: context.textTheme.bodyMedium?.copyWith(
                      color: context.customTheme?.dark2,
                      fontWeight: FontWeight.bold)),
            )).onTap(controller.handlePay),
      ),
    );
  }
}
