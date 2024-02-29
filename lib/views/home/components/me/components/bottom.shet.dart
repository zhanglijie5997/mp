import 'package:flutter/material.dart';
import 'package:mp/components/custom.loaddata.dart';
import 'package:mp/extension/context.ext.dart';

class MeBottomSheet extends StatefulWidget {
  final String id;
  const MeBottomSheet({super.key, required this.id});

  @override
  State<MeBottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<MeBottomSheet> {
  getData() async {
    // final res = await
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
      child: CustomLoadData(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Text("text"),
            );
          },
        ),
      ),
    );
  }
}
