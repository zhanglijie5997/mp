import 'dart:convert';

import 'package:flutter/material.dart';

extension StringExt on String {
  Color color() {
    String _ = this;
    _ = _.toUpperCase().replaceAll('#', '');
    if (_.length == 6) {
      _ = 'FF$_';
    }
    return Color(int.parse(_, radix: 16));
  }

  Map<String, dynamic> toJson() => jsonDecode(this);

  String removeFirst(Pattern pattern, [int startIndex = 0]) =>
      replaceFirst(pattern, '', startIndex);
  String removeAll(Pattern pattern) => replaceAll(pattern, '');

  String encode() {
    return jsonEncode(this);
  }

  T decode<T>() {
    return jsonDecode(this);
  }

  String nowrap() {
    return (Characters(this).join('\u{200B}'));
  }

  String price() {
    return this == "0" ? '--' : this;
  }

  String address() {
    return isEmpty ? "" :  "${substring(0, 4)}***${substring(length - 6, length)}";
  }
}
