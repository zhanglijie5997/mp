// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DynamicImage _$DynamicImageFromJson(Map<String, dynamic> json) => DynamicImage(
      current: json['current'] as int?,
      rows: json['rows'] as int?,
      id: json['id'] as String?,
      createDate: json['createDate'] as String?,
      updateDate: json['updateDate'] as String?,
      createBy: json['createBy'] as String?,
      updateBy: json['updateBy'] as String?,
      delFlag: json['delFlag'] as bool?,
      name: json['name'] as String?,
      backdropImage: json['backdropImage'] as String?,
      coverImage: json['coverImage'] as String?,
      dynamicImage: json['dynamicImage'] as String?,
      duration: json['duration'] as int?,
      topFrame: json['topFrame'] as String?,
      courseFrame: json['courseFrame'] as List<dynamic>?,
      breadth: json['breadth'] as int?,
      altitude: json['altitude'] as int?,
      courseFrames: json['courseFrames'] as List<dynamic>?,
      lastFrame: json['lastFrame'] as String?,
    );

Map<String, dynamic> _$DynamicImageToJson(DynamicImage instance) =>
    <String, dynamic>{
      'current': instance.current,
      'rows': instance.rows,
      'id': instance.id,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
      'createBy': instance.createBy,
      'updateBy': instance.updateBy,
      'delFlag': instance.delFlag,
      'name': instance.name,
      'backdropImage': instance.backdropImage,
      'coverImage': instance.coverImage,
      'dynamicImage': instance.dynamicImage,
      'duration': instance.duration,
      'topFrame': instance.topFrame,
      'courseFrame': instance.courseFrame,
      'breadth': instance.breadth,
      'altitude': instance.altitude,
      'courseFrames': instance.courseFrames,
      'lastFrame': instance.lastFrame,
    };
