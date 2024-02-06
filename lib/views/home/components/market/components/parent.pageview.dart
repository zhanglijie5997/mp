import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/constants/assets.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/models/get_plate_list_model/get_plate_list_model.dart';
import 'package:mp/views/home/components/market/components/tab.pageview.dart';
import 'package:mp/views/home/components/market/controller/controller.dart';
import 'package:mp/models/get_plate_list_model/datum.dart' as platListModelDatum;
class MarketParentPageView extends StatefulWidget {
  const MarketParentPageView({super.key});

  @override
  State<MarketParentPageView> createState() => _MarketParentPageViewState();
}

class _MarketParentPageViewState extends State<MarketParentPageView>
    with TickerProviderStateMixin {
  final controller = HomeMarketController.to;
  GetPlateListModel? data;
  TabController? marketTabController;
  int select = 0;
  listener() {
    setState(() {
      select = marketTabController?.index ?? 0;
    });
  }

  getData() async {
    final res = await HomeRequest.nftMarketGetPlateList();
    setState(() {
      marketTabController?.removeListener(listener);
      res.data?.data?.insert(0, const platListModelDatum.Datum(
        name: "全部",
        plateId: ""
      ));
      data = res.data;
      marketTabController =
          TabController(length: res.data?.data?.length ?? 0, vsync: this);
      marketTabController?.addListener(listener);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }


  @override
  void dispose() {
    marketTabController?.removeListener(listener);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 搜索输入框
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: 12.radius,
              color: context.customTheme?.marketSearchBg,
              border: Border.all(
                  width: 1,
                  color: context.customTheme?.navbarBg ?? Colors.transparent)),
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.assetsImagesSvgIconMarketSearch,
                width: 23,
                height: 23,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text("搜索藏品/盲盒",
                    style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 13, color: context.customTheme?.gray3)),
              )
            ],
          ),
        ),

        Expanded(
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.customTheme?.navbarBg,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(28),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(236, 236, 241, 0.6),
                offset: Offset(0, 5),
                blurRadius: 25,
              ),
            ],
          ),
          child: data != null ? Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TabBar(
                        padding: const EdgeInsets.only(bottom: 5),
                        controller: marketTabController,
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        labelPadding:
                            const EdgeInsets.only(left: 12, right: 0, top: 16),
                        indicatorColor: Colors.transparent,
                        tabs: (data?.data ?? [])
                            .mapIndexed((index, element) => Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                  color: select != index
                                      ? context.customTheme?.navbarBg
                                      : context.customTheme?.fontColor,
                                  borderRadius: 25.radius,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(236, 236, 241, 0.6),
                                      offset: Offset(0, 5),
                                      blurRadius: 25,
                                    ),
                                  ],
                                ),
                                child: Text(element.name ?? "",
                                    style:
                                        context.textTheme.bodyMedium?.copyWith(
                                      fontSize: 14,
                                      color: select == index
                                          ? context.customTheme?.navbarBg
                                          : context.customTheme?.fontColor,
                                    ))))
                            .toList()),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    width: 39,
                    height: 37,
                    child: UnconstrainedBox(
                      child: SvgPicture.asset(
                        Assets.assetsImagesSvgIconFilter,
                        width: 18,
                        height: 18,
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                  child: data?.data != null ? TabBarView(
                controller: marketTabController,
                children: (data?.data ?? [])
                    .mapIndexed((i,element) =>
                        MarketTabPageView(platId: data?.data?[i].plateId))
                    .toList(),
              ):const SizedBox())
            ],
          ): const CustomLoadData(),
        ))
      ],
    );
  }
}
