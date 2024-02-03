import 'package:json_annotation/json_annotation.dart';

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
  final String? logoImg;
  final int? sortChart;
  final int? menuType;
  final int? pageType;
  final String? redirectUrl;
  final int? state;
  final dynamic userId;

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
    this.logoImg,
    this.sortChart,
    this.menuType,
    this.pageType,
    this.redirectUrl,
    this.state,
    this.userId,
  });

  @override
  String toString() {
    return 'Datum(current: $current, rows: $rows, id: $id, createDate: $createDate, updateDate: $updateDate, createBy: $createBy, updateBy: $updateBy, delFlag: $delFlag, name: $name, logoImg: $logoImg, sortChart: $sortChart, menuType: $menuType, pageType: $pageType, redirectUrl: $redirectUrl, state: $state, userId: $userId)';
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
    String? logoImg,
    int? sortChart,
    int? menuType,
    int? pageType,
    String? redirectUrl,
    int? state,
    dynamic userId,
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
      logoImg: logoImg ?? this.logoImg,
      sortChart: sortChart ?? this.sortChart,
      menuType: menuType ?? this.menuType,
      pageType: pageType ?? this.pageType,
      redirectUrl: redirectUrl ?? this.redirectUrl,
      state: state ?? this.state,
      userId: userId ?? this.userId,
    );
  }
}
