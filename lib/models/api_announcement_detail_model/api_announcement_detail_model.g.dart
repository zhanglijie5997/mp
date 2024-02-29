// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_announcement_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAnnouncementDetailModel _$ApiAnnouncementDetailModelFromJson(
        Map<String, dynamic> json) =>
    ApiAnnouncementDetailModel(
      success: json['success'] as bool?,
      resultCode: json['resultCode'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$ApiAnnouncementDetailModelToJson(
        ApiAnnouncementDetailModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'resultCode': instance.resultCode,
      'data': instance.data,
      'dateTime': instance.dateTime,
    };
