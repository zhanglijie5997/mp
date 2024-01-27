import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'home_list_model.g.dart';

@JsonSerializable()
class HomeListModel {
  final bool? success;
  final String? resultCode;
  final List<Datum>? data;
  final String? dateTime;

  const HomeListModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'HomeListModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory HomeListModel.fromJson(Map<String, dynamic> json) {
    return _$HomeListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeListModelToJson(this);

  HomeListModel copyWith({
    bool? success,
    String? resultCode,
    List<Datum>? data,
    String? dateTime,
  }) {
    return HomeListModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
