import 'package:flutter/material.dart';
import 'package:mp/services/theme/theme.services.dart';

extension BuildContextExt on BuildContext {
  CustomTheme? get customTheme => Theme.of(this).extension<CustomTheme>();
}