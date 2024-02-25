import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mp/api/product/product.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/components/custom.refresh.header.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/models/nft_order_get_order_list_model/nft_order_get_order_list_model.dart';
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
  getData() async{
    final res = await ProductRequest.nftOrderGetOrderList(NftOrderGetOrderListParams(
      current: current, row: rows, status: widget.type
    ));
    setState(() {
      details = res.data;
      LogUtil.w(details);
      LogUtil.w("数据");
      
    });
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
        return getData();
      },
      child: CustomLoadData(
        length: details?.rows?.length,
        child: ListView.builder(
          itemCount: details?.rows?.length,
          padding: const EdgeInsets.only(top: 10),
          itemBuilder: (_, index) => OrderItem(data: details?.rows?[index]),
        ),
      ),
    );
     
  }

  @override
  bool get wantKeepAlive => true;
}
