import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/sell/controller/controlle.dart';

class SellPage extends GetView<SellController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('SellPage')),

    body: SafeArea(
      child: Text('SellController'))
    );
  }
}