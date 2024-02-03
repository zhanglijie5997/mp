import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/utils/event.utils.dart';

class MePageViewItem extends StatefulWidget {
  final int? status;
  const MePageViewItem({super.key, this.status});

  @override
  State<MePageViewItem> createState() => _MePageViewItemState();
}

class _MePageViewItemState extends State<MePageViewItem>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomRefresh(
      refresh: () {
        return EventUtils.sleep(3.seconds);
      },
      child: ListView.builder(itemBuilder: (c, index) {
        return Container(
          margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
          padding: const EdgeInsets.all(12),
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
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: 12.radius,
                  child: CustomImage(
                    url: "https://cos.yanjie.art/login/1698876641784233984.png",
                    size: Size(78, 78),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("测试藏品",
                        style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                            child: Text('寄售10',
                                style: context.textTheme.bodyMedium?.copyWith(
                                    fontSize: 12,
                                    color: context.customTheme?.navbarBg)),
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 4),
                            decoration: BoxDecoration(
                                color: context.customTheme?.fontColor,
                                borderRadius: 12.radius),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text('数量10',
                                style: context.textTheme.bodyMedium?.copyWith(
                                    fontSize: 12,
                                    color: context.customTheme?.navbarBg)),
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 4),
                            decoration: BoxDecoration(
                                color: context.customTheme?.fontColor,
                                borderRadius: 12.radius),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  @override
  // TODO: implement keptAlive
  bool get wantKeepAlive => true;
}
