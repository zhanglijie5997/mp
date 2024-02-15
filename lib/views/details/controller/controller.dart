import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/api/product/product.dart';
import 'package:mp/models/product_detail_model/product_detail_model.dart';

class DetailsController extends GetxController {
  final params = Get.parameters;
  final expandedHeight = (300.0).obs;
  final opacity = (0.0).obs;
  // 刷新滚动距离
  final scrollHeight = (0.0).obs;
  late final ScrollController scrollController = ScrollController();
  IndicatorController? refreshController;
  final detail = (const ProductDetailModel()).obs;
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
    final res =
        await ProductRequest.nftMarketGetProductMintDetails(params['id'] ?? "");
    if (res.data != null) {
      detail.value = res.data!;
    }
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
  void onInit() {
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      refreshController?.addListener(refreshListener);
    });
    getData();
    scrollController.addListener(listener);
    super.onInit();
  }
}
