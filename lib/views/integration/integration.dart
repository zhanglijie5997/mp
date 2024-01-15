import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/components/custom.appbar.dart';
import 'package:mp/generated/locales.g.dart';
import 'package:mp/views/integration/controller/controller.dart';

class IntegrationPage extends GetView<IntegrationController> {
  const IntegrationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: Text(LocaleKeys.integration.tr)),
        body: const SafeArea(child: Text('IntegrationController'))
    );
  }
}
