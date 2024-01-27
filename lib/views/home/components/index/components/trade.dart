import 'package:flutter/material.dart';
import 'package:mp/extension/context.ext.dart';
import 'package:mp/extension/num.ext.dart';

class IndexTradeHex extends StatefulWidget {
  const IndexTradeHex({super.key});

  @override
  State<IndexTradeHex> createState() => _IndexTradeHexState();
}

class _IndexTradeHexState extends State<IndexTradeHex> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: context.customTheme?.card, borderRadius: 8.radius),
      width: double.infinity,
      height: 150,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (c, i) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text("交易hex："),
            );
          }),
    );
  }
}
