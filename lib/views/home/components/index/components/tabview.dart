import 'package:flutter/material.dart';
import 'package:mp/components/custom.nodata.dart';
class IndexTabView extends StatefulWidget {
  const IndexTabView({super.key});

  @override
  State<IndexTabView> createState() => _IndexTabViewState();
}

class _IndexTabViewState extends State<IndexTabView> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomNoData();
  }

  @override
  bool get wantKeepAlive => true;
}
