// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_plate_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPlateListModel _$GetPlateListModelFromJson(Map<String, dynamic> json) =>
    GetPlateListModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$GetPlateListModelToJson(GetPlateListModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
