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
    return isEmpty
        ? ""
        : "${substring(0, 4)}***${substring(length - 6, length)}";
  }

  String maskBankCardNumber() {
    if (length <= 4) {
      // 如果银行卡号长度小于等于 4，不进行脱敏处理
      return this;
    } else {
      // 将银行卡号的前面大部分字符替换为保密符号
      String visibleDigits = substring(length - 4);
      String maskedDigits = '*' * (length - 4);
      return maskedDigits + visibleDigits;
    }
  }
}
