import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';

class MarketItem extends StatelessWidget {
  const MarketItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 169.5,
            // 图片
            child: Stack(
              children: [
                ClipRRect(
                  child: CustomImage(
                    url:
                        "https://cos.yanjie.art/exhibition/paint/setting/1719606915065053184.jpg",
                    size: Size(
                      169.5,
                      169.5,
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: 16.radius,
                ),
              ],
            ),
          ),
          // 名称
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 12),
            child: Text("温度系列暖心手办",
                style: context.textTheme.bodyMedium
                    ?.copyWith(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          // 发行量
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: 4.radius,
                border: Border.all(
                    width: .5,
                    color: context.textTheme.bodyMedium?.color ??
                        Colors.transparent)),
            child: Text("发行100",
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 11)),
          ),
          // 价格/流通
          Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("￥",
                          style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              height: 1.8)),
                      Text("28",
                          style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 19, fontWeight: FontWeight.bold)),
                    ],
                  ),

                  // 流通
                  Text("流通1200份", style: context.textTheme.bodyMedium?.copyWith(
                    fontSize: 11, color: context.customTheme?.gray3
                  ))
                ],
              ))
        ],
      ),
    );
  }
}
