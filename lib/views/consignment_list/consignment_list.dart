import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/consignment_list/controller/controller.dart';

class ConsignmentPage extends GetView<ConsignmentController> {
  const ConsignmentPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('ConsignmentPage')),

    body: SafeArea(
      child: Text('ConsignmentController'))
    );
  }
}