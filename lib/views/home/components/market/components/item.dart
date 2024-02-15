import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/map.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/models/product_list_model/row.dart' as productListModelItem;

class MarketItem extends StatelessWidget {
  final productListModelItem.Row? item;
  const MarketItem({super.key, this.item});

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
                    url: item?.productCover ?? "",
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
            child: Text(item?.productName ?? "",
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
            child: Text("发行${item?.issueNumber}",
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
                      Text("${item?.price.toString().price()}",
                          style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 19, fontWeight: FontWeight.bold)),
                    ],
                  ),

                  // 流通
                  Text("流通${item?.circulateNumber}份",
                      style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 11, color: context.customTheme?.gray3))
                ],
              ))
        ],
      ),
    ).onTap(() {
      if (item?.isResell == 1) {
        Get.toNamed("${AppRoutes.consignmentDetail}/${item?.productId}?detail=${item?.toJson().encode()}");
      }
    });
  }
}
