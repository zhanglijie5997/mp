import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'wx_user_model.g.dart';

@JsonSerializable()
class WxUserModel {
  final bool? success;
  final String? resultCode;
  final Data? data;
  final String? dateTime;

  const WxUserModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'WxUserModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory WxUserModel.fromJson(Map<String, dynamic> json) {
    return _$WxUserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WxUserModelToJson(this);

  WxUserModel copyWith({
    bool? success,
    String? resultCode,
    Data? data,
    String? dateTime,
  }) {
    return WxUserModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
