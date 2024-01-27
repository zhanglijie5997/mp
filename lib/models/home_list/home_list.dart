import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'home_list.g.dart';

@JsonSerializable()
class HomeList {
  final bool? success;
  final String? resultCode;
  final List<Datum>? data;
  final String? dateTime;

  const HomeList({this.success, this.resultCode, this.data, this.dateTime});

  @override
  String toString() {
    return 'HomeList(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory HomeList.fromJson(Map<String, dynamic> json) {
    return _$HomeListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeListToJson(this);

  HomeList copyWith({
    bool? success,
    String? resultCode,
    List<Datum>? data,
    String? dateTime,
  }) {
    return HomeList(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
