// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      current: json['current'] as int?,
      rows: json['rows'] as int?,
      id: json['id'] as String?,
      createDate: json['createDate'] as String?,
      updateDate: json['updateDate'] as String?,
      createBy: json['createBy'] as String?,
      updateBy: json['updateBy'] as String?,
      delFlag: json['delFlag'] as bool?,
      rotationChart: json['rotationChart'] as String?,
      rotationChartWeb: json['rotationChartWeb'] as String?,
      sortChart: json['sortChart'] as int?,
      pageType: json['pageType'] as int?,
      redirectUrl: json['redirectUrl'] as String?,
      redirectExhibition: json['redirectExhibition'],
      state: json['state'] as int?,
      redirectExhibitionName: json['redirectExhibitionName'],
      userId: json['userId'],
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'current': instance.current,
      'rows': instance.rows,
      'id': instance.id,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
      'createBy': instance.createBy,
      'updateBy': instance.updateBy,
      'delFlag': instance.delFlag,
      'rotationChart': instance.rotationChart,
      'rotationChartWeb': instance.rotationChartWeb,
      'sortChart': instance.sortChart,
      'pageType': instance.pageType,
      'redirectUrl': instance.redirectUrl,
      'redirectExhibition': instance.redirectExhibition,
      'state': instance.state,
      'redirectExhibitionName': instance.redirectExhibitionName,
      'userId': instance.userId,
    };
