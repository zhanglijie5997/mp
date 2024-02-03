import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'home_position_model.g.dart';

@JsonSerializable()
class HomePositionModel {
  final bool? success;
  final String? resultCode;
  final List<Datum>? data;
  final String? dateTime;

  const HomePositionModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'HomePositionModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory HomePositionModel.fromJson(Map<String, dynamic> json) {
    return _$HomePositionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomePositionModelToJson(this);

  HomePositionModel copyWith({
    bool? success,
    String? resultCode,
    List<Datum>? data,
    String? dateTime,
  }) {
    return HomePositionModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
