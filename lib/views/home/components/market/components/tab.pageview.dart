import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/views/home/components/market/components/item.dart';

class MarketTabPageView extends StatefulWidget {
  const MarketTabPageView({super.key});

  @override
  State<MarketTabPageView> createState() => _MarketTabPageViewState();
}

class _MarketTabPageViewState extends State<MarketTabPageView> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomRefresh(
      refresh: () {
        return EventUtils.sleep(3.seconds);
      },
      child: GridView.builder(
        padding: const EdgeInsets.only(left: 12, top: 11, right: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            childAspectRatio: 0.623
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: MarketItem());
        },

      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}