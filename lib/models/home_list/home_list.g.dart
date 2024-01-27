// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeList _$HomeListFromJson(Map<String, dynamic> json) => HomeList(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$HomeListToJson(HomeList instance) => <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
