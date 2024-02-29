import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/models/nft_product_get_product_detail_by_id_model/nft_product_get_product_detail_by_id_model.dart';
import 'package:mp/views/featured/featured.dart';

class StatusButton extends StatefulWidget {
  final NftProductGetProductDetailByIdModel data;
  const StatusButton({super.key, required this.data});

  @override
  State<StatusButton> createState() => _StatusButtonState();
}

class _StatusButtonState extends State<StatusButton> {

  Timer? timer;

  init() {
    if (widget.data.data?.activityStatus == 1) {
      
    }
  }

  @override
  void didUpdateWidget(StatusButton oldWidget) {
    init();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          borderRadius: 12.radius,
          color: context.customTheme?.card),
      child: Text(
          ActivityStatusEnum.getValue(int.parse(
                  "${data.data?.activityStatus ?? 2}")),
          // "${LocaleKeys.buy.tr} ${controller.detail.value.data?.status}",
          textAlign: TextAlign.center,
          style: context.textTheme.bodyMedium?.copyWith(
              fontSize: 18, fontWeight: FontWeight.bold))
    ).onTap(() {
        // LogUtil.w(controller.detail.value.toJson().encode());
        switch (data.data?.activityStatus) {
          case 1:
            // 即将开售
            break;
          case 2:
            
            break;
          case 3:
            // 已结束
            break;
          case 4:
            // 已售罄
            break;
          case 5:
            // 暂未开售
          default:
        }
      });
  }
}