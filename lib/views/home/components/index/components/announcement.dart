import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/models/accomoun_model/accomoun_model.dart';
import 'package:mp/router/routes.dart';

class IndexAnnouncement extends StatefulWidget {
  final AccomounModel? data;
  const IndexAnnouncement({super.key, this.data});

  @override
  State<IndexAnnouncement> createState() => _IndexAnnouncementState();
}

class _IndexAnnouncementState extends State<IndexAnnouncement> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ClipRRect(
        borderRadius: 18.radius,
        child: Container(
          decoration: BoxDecoration(color: context.customTheme?.navbarBg),
          height: 48,
          child: Swiper(
            scrollDirection: Axis.vertical,
            loop: true,
            autoplay: true,
            itemBuilder: (c, index) {
              return SizedBox(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      margin: const EdgeInsets.only(left: 9),
                      decoration: BoxDecoration(
                          color: context.customTheme?.active,
                          borderRadius: 30.radius),
                      child: UnconstrainedBox(
                        child: SvgPicture.asset(
                          Assets.assetsImagesSvgIconEveryDayNotify,
                          width: 20,
                          height: 20,
                          color: context.customTheme?.purple,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: Text(
                        "${widget.data?.rows?[index].title}",
                        style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 13,
                            color: context.customTheme?.fontColor),
                      ),
                    ),
                  ],
                ),
              ).onTap(() {
                final row = widget.data?.rows?[index];
                Get.toNamed(
                    "${AppRoutes.announcementDetail}/${row?.id}?title=${(row?.title ?? "").encode()}");
              });
            },
            itemCount: widget.data?.rows?.length ?? 0,
          ),
        ),
      ),
    );
  }
}
