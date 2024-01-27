import 'package:flutter/material.dart';
import 'package:mp/constants/theme.custom.dart';

extension BuildContextExt on BuildContext {
  CustomTheme? get customTheme => Theme.of(this).extension<CustomTheme>();
}
