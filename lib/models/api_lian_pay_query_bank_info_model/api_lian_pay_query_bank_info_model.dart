import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'api_lian_pay_query_bank_info_model.g.dart';

@JsonSerializable()
class ApiLianPayQueryBankInfoModel {
  final bool? success;
  final String? resultCode;
  final List<Datum>? data;
  final String? dateTime;

  const ApiLianPayQueryBankInfoModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'ApiLianPayQueryBankInfoModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory ApiLianPayQueryBankInfoModel.fromJson(Map<String, dynamic> json) {
    return _$ApiLianPayQueryBankInfoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiLianPayQueryBankInfoModelToJson(this);

  ApiLianPayQueryBankInfoModel copyWith({
    bool? success,
    String? resultCode,
    List<Datum>? data,
    String? dateTime,
  }) {
    return ApiLianPayQueryBankInfoModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
