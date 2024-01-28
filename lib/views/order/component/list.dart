import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mp/components/custom.refresh.header.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/order/component/item.dart';

class OrderPageViewList extends StatefulWidget {
  const OrderPageViewList({super.key});

  @override
  State<OrderPageViewList> createState() => _OrderPageViewListState();
}

class _OrderPageViewListState extends State<OrderPageViewList>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomRefreshIndicator(
      offsetToArmed: 100,
      autoRebuild: false,
      onRefresh: () {
        return EventUtils.sleep(3000.milliseconds);
      },
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10),
        itemBuilder: (_, index) => OrderItem(),
      ),
      builder:
          (BuildContext context, Widget child, IndicatorController controller) {
        return Column(
          children: [
            CustomRefreshHeader(
              controller: controller,
            ),
            Expanded(child: child)
          ],
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
