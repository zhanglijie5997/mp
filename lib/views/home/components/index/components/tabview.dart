import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/components/custom.nodata.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/models/api_nft_home_page_recomment_list_model/api_nft_home_page_recomment_list_model.dart';
import 'package:mp/router/routes.dart';

class IndexTabView extends StatefulWidget {
  const IndexTabView({super.key});

  @override
  State<IndexTabView> createState() => IndexTabViewState();
}

class IndexTabViewState extends State<IndexTabView>
    with AutomaticKeepAliveClientMixin {
  int page = 1;

  ApiNftHomePageRecommentListModel data =
      const ApiNftHomePageRecommentListModel();

  getData() async {
    final res = await HomeRequest.apiNftHomePageRecommendList(page, 50);
    setState(() {
      data = res.data!;
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
    return CustomLoadData(
      length: data.total,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: data.total,
        itemBuilder: (BuildContext context, int index) {
          final item = data.rows?[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Container(
              height: 406,
              // margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: 24.radius,
                    child: CustomImage(
                      url: item?.productCover ?? "",
                      size: const Size(363, 363),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    width: context.mediaQuerySize.width - 30,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(Assets.assetsImagesHomeListBottom),
                              fit: BoxFit.fitWidth),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                          )),
                      height: 88,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${item?.productName}",
                              style: context.textTheme.bodyMedium?.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: .5,
                                        color: context
                                                .textTheme.bodyMedium?.color ??
                                            Colors.transparent),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12))),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: context
                                              .textTheme.bodyMedium?.color,
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12),
                                          )),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 1, horizontal: 10),
                                      child: Text("流通",
                                          style: context.textTheme.bodyMedium
                                              ?.copyWith(
                                                  color: context
                                                      .customTheme?.navbarBg)),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 1, horizontal: 4),
                                      child: Text("${item?.circulateNumber} 份",
                                          style: context.textTheme.bodyMedium
                                              ?.copyWith()),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: "¥",
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                      children: [
                                    TextSpan(
                                      text: "${item?.productPrice.priceFix()}",
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                    )
                                  ])),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ).onTap(() {
            Get.toNamed("${AppRoutes.featured}/${item?.nftProductId}/${item?.activity?.id}");
          });
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
