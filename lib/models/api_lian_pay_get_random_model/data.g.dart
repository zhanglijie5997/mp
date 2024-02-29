// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      randomKey: json['randomKey'] as String?,
      randomValue: json['randomValue'] as String?,
      license: json['license'] as String?,
      mapArr: json['mapArr'] as String?,
      rsaPublicContent: json['rsaPublicContent'] as String?,
      sm2KeyHex: json['sm2KeyHex'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'randomKey': instance.randomKey,
      'randomValue': instance.randomValue,
      'license': instance.license,
      'mapArr': instance.mapArr,
      'rsaPublicContent': instance.rsaPublicContent,
      'sm2KeyHex': instance.sm2KeyHex,
    };
