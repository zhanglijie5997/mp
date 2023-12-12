import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/views/login/controller/controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: const Text('LoginPage')),

    body: const SafeArea(
      child: Text('LoginController'))
    );
  }
}