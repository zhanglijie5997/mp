import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'api_lian_pay_get_random_model.g.dart';

@JsonSerializable()
class ApiLianPayGetRandomModel {
  final bool? success;
  final String? resultCode;
  final Data? data;
  final String? dateTime;

  const ApiLianPayGetRandomModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'ApiLianPayGetRandomModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory ApiLianPayGetRandomModel.fromJson(Map<String, dynamic> json) {
    return _$ApiLianPayGetRandomModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiLianPayGetRandomModelToJson(this);

  ApiLianPayGetRandomModel copyWith({
    bool? success,
    String? resultCode,
    Data? data,
    String? dateTime,
  }) {
    return ApiLianPayGetRandomModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
