import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/components/custom.image.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/controller/global.controller.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/utils/event.utils.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/views/home/components/me/components/bottom.shet.dart';
import 'package:mp/views/home/components/me/controller/controller.dart';
import 'package:mp/models/user_product_list_model/datum.dart'
    as userProductListModel;

class MePageViewItem extends StatefulWidget {
  final int? status;
  const MePageViewItem({super.key, this.status});

  @override
  State<MePageViewItem> createState() => _MePageViewItemState();
}

class _MePageViewItemState extends State<MePageViewItem>
    with AutomaticKeepAliveClientMixin {
  List<userProductListModel.Datum>? list;
  getData() async {
    final userId = HomeMeController.to.user.value.data?.id;
    final res = await HomeRequest.nftUserProductGetProductList(userId ?? "");
    LogUtil.w(res.data);
    setState(() {
      list = [...(res.data?.data ?? [])];
      LogUtil.w("length__${list?.length}");
    });
  }

  @override
  void initState() {
    getData();
    debounce(GlobalController.to.currentUserMsg, (callback) {
      if (callback.data?.id == null) {
        setState(() {
          list = [];
        });
      } else {
        getData();
      }
    }, time: 0.microseconds);
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
        length: list?.length,
        top: 150,
        bottom: 150,
        child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 20),
            itemCount: list?.length,
            itemBuilder: (c, index) {
              final item = list?[index];
              return Container(
                margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: 16.radius,
                  color: context.customTheme?.navbarBg,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(236, 236, 241, 0.6),
                      offset: Offset(0, 5),
                      blurRadius: 25,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: 12.radius,
                        child: CustomImage(
                          url: item?.productCover ?? "",
                          size: const Size(78, 78),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${item?.productName}",
                              style: context.textTheme.bodyMedium?.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Visibility(
                                  visible: (item?.consignmentNumber ?? 0) > 0,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 4),
                                    decoration: BoxDecoration(
                                        color: context.customTheme?.fontColor,
                                        borderRadius: 12.radius),
                                    child: Text('寄售${item?.consignmentNumber}',
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontSize: 12,
                                                color: context
                                                    .customTheme?.navbarBg)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 4),
                                  decoration: BoxDecoration(
                                      color: context.customTheme?.fontColor,
                                      borderRadius: 12.radius),
                                  child: Text('数量${item?.sumNumber}',
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontSize: 12,
                                              color: context
                                                  .customTheme?.navbarBg)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ).onTap(() {
                Get.bottomSheet(MeBottomSheet(
                  id: item?.productId ?? "",
                ));
              });
            }),
      ),
    );
  }

  @override
  // TODO: implement keptAlive
  bool get wantKeepAlive => true;
}
