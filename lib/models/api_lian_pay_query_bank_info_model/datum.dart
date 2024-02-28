import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'linked_acctno')
  final String? linkedAcctno;
  @JsonKey(name: 'linked_agrtno')
  final String? linkedAgrtno;
  @JsonKey(name: 'linked_bankcode')
  final String? linkedBankcode;
  @JsonKey(name: 'linked_brbankname')
  final String? linkedBrbankname;
  @JsonKey(name: 'linked_phone')
  final String? linkedPhone;

  const Datum({
    this.linkedAcctno,
    this.linkedAgrtno,
    this.linkedBankcode,
    this.linkedBrbankname,
    this.linkedPhone,
  });

  @override
  String toString() {
    return 'Datum(linkedAcctno: $linkedAcctno, linkedAgrtno: $linkedAgrtno, linkedBankcode: $linkedBankcode, linkedBrbankname: $linkedBrbankname, linkedPhone: $linkedPhone)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    String? linkedAcctno,
    String? linkedAgrtno,
    String? linkedBankcode,
    String? linkedBrbankname,
    String? linkedPhone,
  }) {
    return Datum(
      linkedAcctno: linkedAcctno ?? this.linkedAcctno,
      linkedAgrtno: linkedAgrtno ?? this.linkedAgrtno,
      linkedBankcode: linkedBankcode ?? this.linkedBankcode,
      linkedBrbankname: linkedBrbankname ?? this.linkedBrbankname,
      linkedPhone: linkedPhone ?? this.linkedPhone,
    );
  }
}
