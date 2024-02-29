import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loadmore/loadmore.dart';
import 'package:mp/api/product/product.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/models/nft_user_product_get_product_mint_list_new_model/nft_user_product_get_product_mint_list_new_model.dart';
import 'package:mp/router/routes.dart';

class MeBottomSheet extends StatefulWidget {
  final String id;
  const MeBottomSheet({super.key, required this.id});

  @override
  State<MeBottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<MeBottomSheet> {
  int page = 1;
  NftUserProductGetProductMintListNewModel? data;
  final globalController = GlobalController.to;
  Future<bool> getData() async {
    final res = await ProductRequest.nftUserProductGetProductMintListNew(
        NftUserProductGetProductMintListNewParams(
            current: page,
            rows: 20,
            userId: globalController.currentUserMsg.value.data?.id,
            productId: widget.id));
    setState(() {
      data = res.data!;
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
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
          color: context.customTheme?.navbarBg,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
      child: CustomRefresh(
        refresh: () {
          page = 1;
          getData();
        },
        child: CustomLoadData(
          length: data?.total,
          child: LoadMore(
            onLoadMore: () {
              page++;
              return getData();
            },
            isFinish: data?.total == data?.rows?.length,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: GridView.builder(
                itemCount: data?.rows?.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = data?.rows?[index];
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: context.customTheme?.navbarBg,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(236, 236, 241, 0.6),
                            offset: Offset(0, 5),
                            blurRadius: 25,
                          ),
                        ],
                        borderRadius: 8.radius),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Visibility(
                              visible: (item?.status?.toInt() ?? 1) != 1,
                              child: Container(
                                  width: 16,
                                  height: 16,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: 50.radius,
                                      color: context.customTheme?.fontColor),
                                  child: Text(
                                      (item?.status?.toInt() ?? 1).statusStr(),
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontSize: 10,
                                              color: context
                                                  .customTheme?.navbarBg))),
                            )),
                        Center(child: Text("${item?.productCode}")),
                      ],
                    ),
                  ).onTap(() {
                    Get.back();
                    Get.toNamed("${AppRoutes.details}/${item?.productMintId}");
                  });
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
