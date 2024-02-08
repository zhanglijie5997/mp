import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'user_phone_login_model.g.dart';

@JsonSerializable()
class UserPhoneLoginModel {
  final bool? success;
  final String? resultCode;
  final Data? data;
  final String? dateTime;

  const UserPhoneLoginModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'UserPhoneLoginModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory UserPhoneLoginModel.fromJson(Map<String, dynamic> json) {
    return _$UserPhoneLoginModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserPhoneLoginModelToJson(this);

  UserPhoneLoginModel copyWith({
    bool? success,
    String? resultCode,
    Data? data,
    String? dateTime,
  }) {
    return UserPhoneLoginModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
