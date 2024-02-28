import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loadmore/loadmore.dart';
import 'package:mp/api/home/home.request.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/components/custom.refresh.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';
import 'package:mp/extension/string.ext.dart';
import 'package:mp/extension/widget.ext.dart';
import 'package:mp/models/accomoun_params/accomoun_params.dart';
import 'package:mp/models/accomoun_tab_list_model/datum.dart';
import 'package:mp/models/accomoun_model/row.dart' as item;
import 'package:mp/router/routes.dart';
import 'package:mp/utils/log.utils.dart';

class AnnouncementTabView extends StatefulWidget {
  final Datum? data;
  const AnnouncementTabView({super.key, this.data});

  @override
  State<AnnouncementTabView> createState() => _AnnouncementTabViewState();
}

class _AnnouncementTabViewState extends State<AnnouncementTabView>
    with AutomaticKeepAliveClientMixin {
  int current = 1;
  bool finished = false;
  final rows = 20;
  List<item.Row>? list = null;
  Future<bool> getAccouncementList() async {
    LogUtil.w(widget.data);
    LogUtil.w("widget.data ${widget.data?.id}");
    final params =
        AccomounParams(row: rows, current: current, type: widget.data?.id);
    list = [];
    final res = await HomeRequest.apiAnnouncementList(params);
    list!.addAll(res.data?.rows ?? []);
    if ((res.data?.rows ?? []).length < 10) {
      finished = true;
    } else {
      current += 1;
    }
    LogUtil.w("length ${list?.length}");
    setState(() {});
    return true;
  }

  Future onRefresh() {
    current = 1;
    finished = false;
    return getAccouncementList();
  }

  Future<String> mockNetworkData() async {
    return Future.delayed(2.seconds, () => "我是从互联网上获取的数据");
  }

  @override
  void initState() {
    onRefresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomRefresh(
      refresh: onRefresh,
      child: CustomLoadData(
        length: list?.length,
        child: LoadMore(
          isFinish: (list?.length ?? 0) % rows != 0,
          onLoadMore: () {
            current++;
            return getAccouncementList();
          },
          child: ListView.builder(
            itemCount: list?.length,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final e = list![index];
              return Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: context.customTheme?.navbarBg,
                  borderRadius: 16.radius,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06),
                      offset: Offset(0, 0),
                      blurRadius: 20,
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text("${e.title}",
                                style: context.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis)),
                          ),
                        ),
                        Text("${e.publishTime}",
                            style: context.textTheme.bodyMedium
                                ?.copyWith(color: context.customTheme?.gray3))
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 14),
                      alignment: Alignment.centerLeft,
                      child: Text((e.title ?? "").nowrap(),
                          maxLines: 3,
                          style: context.textTheme.bodyMedium?.copyWith(
                              color: context.customTheme?.gray3,
                              overflow: TextOverflow.ellipsis)),
                    )
                  ],
                ),
              ).onTap(() {
                Get.toNamed(
                    "${AppRoutes.announcementDetail}/${e.id}?title=${(e.title ?? "").encode()}");
              });
            },
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
