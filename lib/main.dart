import 'package:flutter/material.dart';
import 'package:mp/mp.app.dart';
import 'package:mp/services/services.dart';

main() async{
  await AppServices.init();
  runApp(const MpApp());
}