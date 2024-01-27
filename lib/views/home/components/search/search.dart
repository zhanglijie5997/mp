import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/home/components/search/controller/controller.dart';

class HomeSearchPage extends GetView<HomeSearchController> {
  const HomeSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('HomeSearchController')));
  }
}
