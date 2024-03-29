import 'package:flutter/material.dart';

enum StatusEnum {
  buy(1, "持"),
  paying(2, "寄"),
  build(4, "已铸造"),
  destory(5, "已销毁");

  const StatusEnum(this.number, this.value);

  final int number;

  final String value;

  static StatusEnum getType(int number) =>
      StatusEnum.values.firstWhere((activity) => activity.number == number);

  static String getValue(int number) => StatusEnum.values
      .firstWhere((activity) => activity.number == number)
      .value;
}

extension IntExt on int {
  Duration get days => Duration(days: this);

  Duration get hours => Duration(hours: this);

  Duration get minutes => Duration(minutes: this);

  Duration get seconds => Duration(seconds: this);

  Duration get milliseconds => Duration(milliseconds: this);

  Duration get microseconds => Duration(microseconds: this);

  DateTime get toDateTimeInMicroseconds =>
      DateTime.fromMicrosecondsSinceEpoch(this);

  DateTime get toDateTimeInMilliseconds =>
      DateTime.fromMillisecondsSinceEpoch(this);

  BorderRadius get radius => BorderRadius.all(Radius.circular(toDouble()));

  String priceFix() {
    return "${this == 0 ? this : "--"}";
  }

  // 根据状态显示不同
  String statusStr() {
    return StatusEnum.getValue(this);
  }
}

extension DoubleExt on double? {
  String priceFix() {
    return "${(this ?? 0) > 0 ? this : "--"}";
  }
}

extension Numext on num {
  String get fileSizeFromBytes {
    const int kb = 1024;
    const int mb = 1024 * kb;
    const int gb = 1024 * mb;
    if (this >= gb) {
      return '${(this / gb).toStringAsFixed(2)} GB';
    }
    if (this >= mb) {
      return '${(this / mb).toStringAsFixed(2)} MB';
    }
    if (this >= kb) {
      return '${(this / kb).toStringAsFixed(2)} KB';
    }
    return '$this B';
  }
}
