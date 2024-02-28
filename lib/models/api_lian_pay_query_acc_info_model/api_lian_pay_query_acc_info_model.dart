import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'api_lian_pay_query_acc_info_model.g.dart';

@JsonSerializable()
class ApiLianPayQueryAccInfoModel {
  final bool? success;
  final String? resultCode;
  final List<Datum>? data;
  final String? dateTime;

  const ApiLianPayQueryAccInfoModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'ApiLianPayQueryAccInfoModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory ApiLianPayQueryAccInfoModel.fromJson(Map<String, dynamic> json) {
    return _$ApiLianPayQueryAccInfoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiLianPayQueryAccInfoModelToJson(this);

  ApiLianPayQueryAccInfoModel copyWith({
    bool? success,
    String? resultCode,
    List<Datum>? data,
    String? dateTime,
  }) {
    return ApiLianPayQueryAccInfoModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
