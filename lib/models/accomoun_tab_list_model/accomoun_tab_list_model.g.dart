// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accomoun_tab_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccomounTabListModel _$AccomounTabListModelFromJson(
        Map<String, dynamic> json) =>
    AccomounTabListModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$AccomounTabListModelToJson(
        AccomounTabListModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
