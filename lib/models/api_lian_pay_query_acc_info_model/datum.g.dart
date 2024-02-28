// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      acctState: json['acct_state'] as String?,
      acctType: json['acct_type'] as String?,
      amtBalaval: json['amt_balaval'] as String?,
      amtBalcur: json['amt_balcur'] as String?,
      amtBalfrz: json['amt_balfrz'] as String?,
      amtLastaval: json['amt_lastaval'] as String?,
      amtLastbal: json['amt_lastbal'] as String?,
      amtLastfrz: json['amt_lastfrz'] as String?,
      oidAcctno: json['oid_acctno'] as String?,
      userStatus: json['userStatus'] as int?,
      remark: json['remark'],
      realName: json['realName'] as String?,
      bankAccount: json['bankAccount'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'acct_state': instance.acctState,
      'acct_type': instance.acctType,
      'amt_balaval': instance.amtBalaval,
      'amt_balcur': instance.amtBalcur,
      'amt_balfrz': instance.amtBalfrz,
      'amt_lastaval': instance.amtLastaval,
      'amt_lastbal': instance.amtLastbal,
      'amt_lastfrz': instance.amtLastfrz,
      'oid_acctno': instance.oidAcctno,
      'userStatus': instance.userStatus,
      'remark': instance.remark,
      'realName': instance.realName,
      'bankAccount': instance.bankAccount,
    };
