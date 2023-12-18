import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/router/routes.dart';
import 'package:mp/utils/toast.utils.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class IndexFirst extends StatefulWidget {
  final String label;
  const IndexFirst({super.key, required this.label});

  @override
  State<IndexFirst> createState() => _IndexFirstState();
}

class _IndexFirstState extends State<IndexFirst> {
  final img = "https://static.ibox.art/file/oss/test/image/nft-goods/144ea876bf184bb180b9be8c7626e132.png?style=st6";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.label,
                      style: context.textTheme.bodyMedium
                          ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    width: 40,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: 3.radius,
                      color: context.theme.primaryColor
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(LocaleKeys.more.tr,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 14,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: SvgPicture.asset(
                      Assets.assetsImagesSvgIconIconArrow,
                      width: 10,
                      height: 10,
                      // ignore: deprecated_member_use
                      color: context.customTheme?.fontColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),

        // 列表
        SizedBox(
          height: 390,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 15),
            shrinkWrap: true,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (c, i) {
            return Container(
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: context.theme.cardColor,
                borderRadius: 12.radius
              ),
              width: 320, height: 311,
              child: ClipRRect(
                borderRadius: 12.radius,
                child: Shimmer(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ClipRRect(
                          borderRadius: 14.radius,
                          child: CustomImage(url: img, size: const Size(279, 279), fit: BoxFit.fill,)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Row(
                          children: [
                            Text("图片名称", style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold, 
                            )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomImage(url: "", size: const Size(16, 16),),
                            )
                          ],
                        ), 
                        alignment: Alignment.centerLeft, 
                      ),
                      // 价格
                      Container(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0, right: 4),
                              child:Text('¥', style: context.textTheme.bodyMedium?.copyWith(fontSize: 12, fontWeight: FontWeight.bold),)
                            ),
                            Text("100",style: context.textTheme.bodyMedium?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ))
                    ],
                  ),
                ),
              ),
            ).onTap(() {
              // ToastUtils.showLoading("msg");
              Get.toNamed("${AppRoutes.details}/$i");
            });
          }),
        )
      ],
    );
  }
}
