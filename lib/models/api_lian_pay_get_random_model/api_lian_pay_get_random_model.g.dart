// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_lian_pay_get_random_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLianPayGetRandomModel _$ApiLianPayGetRandomModelFromJson(
        Map<String, dynamic> json) =>
    ApiLianPayGetRandomModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$ApiLianPayGetRandomModelToJson(
        ApiLianPayGetRandomModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
