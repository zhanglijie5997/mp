import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loadmore/loadmore.dart';
import 'package:mp/api/product/product.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/components/custom.refresh.header.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/models/nft_order_get_order_list_model/nft_order_get_order_list_model.dart';
import 'package:mp/models/nft_order_get_order_list_model/row.dart' as listRow;
import 'package:mp/utils/event.utils.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/views/order/component/item.dart';

class OrderPageViewList extends StatefulWidget {
  final String? type;
  const OrderPageViewList({super.key, this.type});

  @override
  State<OrderPageViewList> createState() => _OrderPageViewListState();
}

class _OrderPageViewListState extends State<OrderPageViewList>
    with AutomaticKeepAliveClientMixin {
  int current = 1;
  int rows = 20;
  NftOrderGetOrderListModel? details;
  Future<bool> getData() async {
    final res = await ProductRequest.nftOrderGetOrderList(
        NftOrderGetOrderListParams(
            current: current, row: rows, status: widget.type));
    setState(() {
      if (current == 1) {
        details = res.data;
      } else {
        final List<listRow.Row> row = [
          ...(details?.rows ?? []),
          ...(res.data?.rows ?? [])
        ];
        details = details?.copyWith(rows: row);
      }
      LogUtil.w(details);
      LogUtil.w("数据");
    });
    return true;
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomRefresh(
      refresh: () {
        current = 1;
        return getData();
      },
      child: CustomLoadData(
        length: details?.rows?.length,
        child: LoadMore(
          delegate: CustomLoadMoreDelegate(),
          isFinish: (details?.rows?.length ?? 0) == details?.total,
          onLoadMore: () {
            current++;
            return getData();
          },
          child: ListView.builder(
            itemCount: details?.rows?.length,
            padding: const EdgeInsets.only(top: 10, bottom: 0),
            itemBuilder: (_, index) => OrderItem(data: details?.rows?[index]),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class CustomLoadMoreDelegate extends LoadMoreDelegate {
  @override
  Widget buildChild(LoadMoreStatus status,
      {LoadMoreTextBuilder builder = DefaultLoadMoreTextBuilder.chinese}) {
    String text = builder(status);
    if (status == LoadMoreStatus.fail) {
      return Container(
        child: Text(text),
      );
    }
    if (status == LoadMoreStatus.idle) {
      return Text(text);
    }
    if (status == LoadMoreStatus.loading) {
      return Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 12,
              height: 12,
              child: CircularProgressIndicator(
                backgroundColor: Get.context?.textTheme.bodyMedium?.color,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text),
            ),
          ],
        ),
      );
    }
    if (status == LoadMoreStatus.nomore) {
      return Text("$text 33");
    }

    return Text("$text 444");
  }
}
