// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      linkedAcctno: json['linked_acctno'] as String?,
      linkedAgrtno: json['linked_agrtno'] as String?,
      linkedBankcode: json['linked_bankcode'] as String?,
      linkedBrbankname: json['linked_brbankname'] as String?,
      linkedPhone: json['linked_phone'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'linked_acctno': instance.linkedAcctno,
      'linked_agrtno': instance.linkedAgrtno,
      'linked_bankcode': instance.linkedBankcode,
      'linked_brbankname': instance.linkedBrbankname,
      'linked_phone': instance.linkedPhone,
    };
