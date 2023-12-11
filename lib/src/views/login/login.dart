import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/src/views/login/controller/controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('LoginPage')),

    body: SafeArea(
      child: Text('LoginController'))
    );
  }
}