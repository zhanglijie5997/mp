import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/views/invite/controller/controller.dart';

class InvitePage extends GetView<InviteController> {
  const InvitePage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: CustomAppBar(header: 'InvitePage'),

    body: Text('InviteController')
    );
  }
}