// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_lian_pay_query_acc_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLianPayQueryAccInfoModel _$ApiLianPayQueryAccInfoModelFromJson(
        Map<String, dynamic> json) =>
    ApiLianPayQueryAccInfoModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$ApiLianPayQueryAccInfoModelToJson(
        ApiLianPayQueryAccInfoModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
