// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_phone_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPhoneLoginModel _$UserPhoneLoginModelFromJson(Map<String, dynamic> json) =>
    UserPhoneLoginModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$UserPhoneLoginModelToJson(
        UserPhoneLoginModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
