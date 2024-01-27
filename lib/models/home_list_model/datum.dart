import 'package:json_annotation/json_annotation.dart';

import 'object.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  final int? current;
  final int? rows;
  final String? id;
  final String? createDate;
  final String? updateDate;
  final String? createBy;
  final String? updateBy;
  final bool? delFlag;
  final String? name;
  final int? code;
  final String? settingJson;
  final Object? object;

  const Datum({
    this.current,
    this.rows,
    this.id,
    this.createDate,
    this.updateDate,
    this.createBy,
    this.updateBy,
    this.delFlag,
    this.name,
    this.code,
    this.settingJson,
    this.object,
  });

  @override
  String toString() {
    return 'Datum(current: $current, rows: $rows, id: $id, createDate: $createDate, updateDate: $updateDate, createBy: $createBy, updateBy: $updateBy, delFlag: $delFlag, name: $name, code: $code, settingJson: $settingJson, object: $object)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    int? current,
    int? rows,
    String? id,
    String? createDate,
    String? updateDate,
    String? createBy,
    String? updateBy,
    bool? delFlag,
    String? name,
    int? code,
    String? settingJson,
    Object? object,
  }) {
    return Datum(
      current: current ?? this.current,
      rows: rows ?? this.rows,
      id: id ?? this.id,
      createDate: createDate ?? this.createDate,
      updateDate: updateDate ?? this.updateDate,
      createBy: createBy ?? this.createBy,
      updateBy: updateBy ?? this.updateBy,
      delFlag: delFlag ?? this.delFlag,
      name: name ?? this.name,
      code: code ?? this.code,
      settingJson: settingJson ?? this.settingJson,
      object: object ?? this.object,
    );
  }
}
