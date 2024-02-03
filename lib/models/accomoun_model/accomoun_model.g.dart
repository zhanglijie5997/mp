// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accomoun_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccomounModel _$AccomounModelFromJson(Map<String, dynamic> json) =>
    AccomounModel(
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Row.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$AccomounModelToJson(AccomounModel instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'total': instance.total,
    };
