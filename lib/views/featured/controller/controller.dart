import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/models/nft_product_get_product_detail_by_id_model/nft_product_get_product_detail_by_id_model.dart';
import 'package:mp/models/product_detail_model/product_detail_model.dart';

class FeaturedController extends GetxController {
  IndicatorController? refreshController;

  late final ScrollController scrollController = ScrollController();
  final params = Get.parameters;
  final expandedHeight = (300.0).obs;
  final opacity = (0.0).obs;
  // 刷新滚动距离
  final scrollHeight = (0.0).obs;
  final refreshState = (IndicatorState.idle).obs;
  final detail = (const NftProductGetProductDetailByIdModel()).obs;

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

  getData() async{
    final res = await HomeRequest.nftProductGetProductDetailById(params["id"] ?? "", params["activeId"] ?? "");
    detail.value = res.data!;
  }

  refreshListener() {
    refreshState.value = refreshController?.state ?? IndicatorState.idle;
  }

  @override
  void onReady() {
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      refreshController?.addListener(refreshListener);
    });
    getData();
    scrollController.addListener(listener);
    super.onReady();
  }
}