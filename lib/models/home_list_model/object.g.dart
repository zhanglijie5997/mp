// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Object _$ObjectFromJson(Map<String, dynamic> json) => Object(
      isNeedInviteCode: json['isNeedInviteCode'] as int?,
      isHideOneKeyLogin: json['isHideOneKeyLogin'] as int?,
      isOpenMaxRegLimit: json['isOpenMaxRegLimit'] as int?,
      maxRegLimitCount: json['maxRegLimitCount'] as int?,
      validInviteCodeCount: json['validInviteCodeCount'] as int?,
    );

Map<String, dynamic> _$ObjectToJson(Object instance) => <String, dynamic>{
      'isNeedInviteCode': instance.isNeedInviteCode,
      'isHideOneKeyLogin': instance.isHideOneKeyLogin,
      'isOpenMaxRegLimit': instance.isOpenMaxRegLimit,
      'maxRegLimitCount': instance.maxRegLimitCount,
      'validInviteCodeCount': instance.validInviteCodeCount,
    };
