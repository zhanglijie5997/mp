// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeListModel _$HomeListModelFromJson(Map<String, dynamic> json) =>
    HomeListModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$HomeListModelToJson(HomeListModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
