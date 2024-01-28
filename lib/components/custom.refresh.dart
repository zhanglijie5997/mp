import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mp/components/custom.refresh.header.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/utils/event.utils.dart';
class CustomRefresh extends StatefulWidget {
  final Widget? child;
  final Function? refresh;
  final bool? showNodata;
  final int? length; // 0 -> 没有滚动列表 1 -> 有滚动列表
  const CustomRefresh({super.key, this.child, this.refresh, this.showNodata, this.length = 0});
  @override
  State<CustomRefresh> createState() => _CustomRefreshState();
}

class _CustomRefreshState extends State<CustomRefresh> {

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      notificationPredicate: (ScrollNotification notification) => notification.depth == widget.length,
      onRefresh: () async{
        return await widget.refresh?.call();
      } , // Your refresh logic
      offsetToArmed: 100,
      autoRebuild: false,
      builder: (BuildContext context, Widget child, IndicatorController controller) {
        return Column(
          children: [
            CustomRefreshHeader(controller: controller,),
            Expanded(child: widget.showNodata ?? false ? SizedBox() : child)
          ],
        );
      },
      child: widget.child ?? const SizedBox(),
    );
  }
}
