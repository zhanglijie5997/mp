import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/api/product/product.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/models/consignment_list_model/consignment_list_model.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/models/product_list_model/row.dart' as productListModelItem;

class ConsignmentController extends GetxController {
  final params = Get.parameters;
  final data = (const ConsignmentListModel()).obs;
  final detail = (const productListModelItem.Row()).obs;
  final expandedHeight = (350.0).obs;
  final opacity = (0.0).obs;
  // 刷新滚动距离
  final scrollHeight = (0.0).obs;
  late final ScrollController scrollController = ScrollController();
  IndicatorController? refreshController;
  // 下拉刷新状态
  final refreshState = (IndicatorState.idle).obs;
  listener() {
    final res = (scrollController.offset / expandedHeight.value);
    // print(scrollController.offset);
    if (scrollController.offset <= 0) {
      scrollHeight.value = -scrollController.offset;
    }
    opacity.value = res >= 1
        ? 1
        : res <= 0
            ? 0
            : res;
  }

  getData() async {
    final res = await ProductRequest.nftMarketGetConsignmentList(
        (NftMarketGetConsignmentProductListParams(
            rows: 10, current: 1, price: 1, productId: params['id'])));
    data.value = res.data!;
  }

  refreshListener() {
    refreshState.value = refreshController?.state ?? IndicatorState.idle;
  }

  @override
  void onClose() {
    refreshController?.removeListener(refreshListener);
    scrollController.removeListener(listener);
    super.onClose();
  }

  @override
  void onReady() {
    LogUtil.w("details__${params['detail']}");
    detail.value =
        productListModelItem.Row.fromJson((params['detail'] ?? "{}").decode());
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      refreshController?.addListener(refreshListener);
    });
    getData();
    scrollController.addListener(listener);
    super.onReady();
  }
}
