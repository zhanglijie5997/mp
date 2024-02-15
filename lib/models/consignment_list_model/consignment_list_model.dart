import 'package:json_annotation/json_annotation.dart';

import 'row.dart';

part 'consignment_list_model.g.dart';

@JsonSerializable()
class ConsignmentListModel {
  final List<Row>? rows;
  final int? total;

  const ConsignmentListModel({this.rows, this.total});

  @override
  String toString() => 'ConsignmentListModel(rows: $rows, total: $total)';

  factory ConsignmentListModel.fromJson(Map<String, dynamic> json) {
    return _$ConsignmentListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConsignmentListModelToJson(this);

  ConsignmentListModel copyWith({
    List<Row>? rows,
    int? total,
  }) {
    return ConsignmentListModel(
      rows: rows ?? this.rows,
      total: total ?? this.total,
    );
  }
}
