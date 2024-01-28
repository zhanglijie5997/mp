import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/views/wallet/controller/controller.dart';

class WalletPage extends GetView<WalletController> {
  const WalletPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: CustomAppBar(header: "钱包"),

    body: SafeArea(
      child: Text('WalletController'))
    );
  }
}