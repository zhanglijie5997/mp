import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'acct_state')
  final String? acctState;
  @JsonKey(name: 'acct_type')
  final String? acctType;
  @JsonKey(name: 'amt_balaval')
  final String? amtBalaval;
  @JsonKey(name: 'amt_balcur')
  final String? amtBalcur;
  @JsonKey(name: 'amt_balfrz')
  final String? amtBalfrz;
  @JsonKey(name: 'amt_lastaval')
  final String? amtLastaval;
  @JsonKey(name: 'amt_lastbal')
  final String? amtLastbal;
  @JsonKey(name: 'amt_lastfrz')
  final String? amtLastfrz;
  @JsonKey(name: 'oid_acctno')
  final String? oidAcctno;
  final int? userStatus;
  final dynamic remark;
  final String? realName;
  final String? bankAccount;

  const Datum({
    this.acctState,
    this.acctType,
    this.amtBalaval,
    this.amtBalcur,
    this.amtBalfrz,
    this.amtLastaval,
    this.amtLastbal,
    this.amtLastfrz,
    this.oidAcctno,
    this.userStatus,
    this.remark,
    this.realName,
    this.bankAccount,
  });

  @override
  String toString() {
    return 'Datum(acctState: $acctState, acctType: $acctType, amtBalaval: $amtBalaval, amtBalcur: $amtBalcur, amtBalfrz: $amtBalfrz, amtLastaval: $amtLastaval, amtLastbal: $amtLastbal, amtLastfrz: $amtLastfrz, oidAcctno: $oidAcctno, userStatus: $userStatus, remark: $remark, realName: $realName, bankAccount: $bankAccount)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    String? acctState,
    String? acctType,
    String? amtBalaval,
    String? amtBalcur,
    String? amtBalfrz,
    String? amtLastaval,
    String? amtLastbal,
    String? amtLastfrz,
    String? oidAcctno,
    int? userStatus,
    dynamic remark,
    String? realName,
    String? bankAccount,
  }) {
    return Datum(
      acctState: acctState ?? this.acctState,
      acctType: acctType ?? this.acctType,
      amtBalaval: amtBalaval ?? this.amtBalaval,
      amtBalcur: amtBalcur ?? this.amtBalcur,
      amtBalfrz: amtBalfrz ?? this.amtBalfrz,
      amtLastaval: amtLastaval ?? this.amtLastaval,
      amtLastbal: amtLastbal ?? this.amtLastbal,
      amtLastfrz: amtLastfrz ?? this.amtLastfrz,
      oidAcctno: oidAcctno ?? this.oidAcctno,
      userStatus: userStatus ?? this.userStatus,
      remark: remark ?? this.remark,
      realName: realName ?? this.realName,
      bankAccount: bankAccount ?? this.bankAccount,
    );
  }
}
