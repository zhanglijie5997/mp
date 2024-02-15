// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consignment_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsignmentListModel _$ConsignmentListModelFromJson(
        Map<String, dynamic> json) =>
    ConsignmentListModel(
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Row.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$ConsignmentListModelToJson(
        ConsignmentListModel instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'total': instance.total,
    };
