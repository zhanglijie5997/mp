import 'package:json_annotation/json_annotation.dart';

import 'row.dart';

part 'accomoun_model.g.dart';

@JsonSerializable()
class AccomounModel {
  final List<Row>? rows;
  final int? total;

  const AccomounModel({this.rows, this.total});

  @override
  String toString() => 'AccomounModel(rows: $rows, total: $total)';

  factory AccomounModel.fromJson(Map<String, dynamic> json) {
    return _$AccomounModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccomounModelToJson(this);

  AccomounModel copyWith({
    List<Row>? rows,
    int? total,
  }) {
    return AccomounModel(
      rows: rows ?? this.rows,
      total: total ?? this.total,
    );
  }
}
