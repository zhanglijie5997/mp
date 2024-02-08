import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/views/home/components/market/components/item.dart';

class MarketTabPageView extends StatefulWidget {
  final String? platId;
  const MarketTabPageView({super.key, this.platId});

  @override
  State<MarketTabPageView> createState() => _MarketTabPageViewState();
}

class _MarketTabPageViewState extends State<MarketTabPageView>
    with AutomaticKeepAliveClientMixin {
  List? list;
  int page = 1;
  int rows = 10;
  getData() async {
    LogUtil.w("message ${widget.platId}");
    final res = await HomeRequest.nftMarketGetConsignmentProductList(
        NftMarketGetConsignmentProductListParams(
            current: page, rows: rows, type: 1, plateId: widget.platId ?? ""));
    setState(() {
      list = res.data?.rows;
    });
  }

  @override
  void initState() {
    LogUtil.w("分类id____ ${widget.platId}");
    if (widget.platId != null) {
      getData();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomRefresh(
      refresh: () {
        page = 1;
        return getData();
      },
      child: CustomLoadData(
        top: 200,
        bottom: 200,
        length: list?.length,
        child: GridView.builder(
          itemCount: list?.length ?? 0,
          padding: const EdgeInsets.only(left: 12, top: 11, right: 12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 12, childAspectRatio: 0.623),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: MarketItem(item: list?[index]));
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
