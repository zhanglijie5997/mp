import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';

class IndexAnnouncement extends StatefulWidget {
  const IndexAnnouncement({super.key});

  @override
  State<IndexAnnouncement> createState() => _IndexAnnouncementState();
}

class _IndexAnnouncementState extends State<IndexAnnouncement> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      scrollDirection: Axis.vertical,
      loop: true,
      autoplay: true,
      itemBuilder: (c, index) {
        return SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "公告${index}",
                style: context.textTheme.bodyMedium?.copyWith(
                    fontSize: 16, color: context.customTheme?.fontColor),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: SvgPicture.asset(
                  Assets.assetsImagesSvgIconIconArrow,
                  width: 14,
                  height: 14,
                  // ignore: deprecated_member_use
                  color: context.customTheme?.fontColor,
                ),
              )
            ],
          ),
        );
      },
      itemCount: 3,
    );
  }
}
