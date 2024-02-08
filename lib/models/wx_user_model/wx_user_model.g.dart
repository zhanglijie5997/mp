// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wx_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WxUserModel _$WxUserModelFromJson(Map<String, dynamic> json) => WxUserModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$WxUserModelToJson(WxUserModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
