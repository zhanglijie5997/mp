import 'package:json_annotation/json_annotation.dart';

import 'row.dart';

part 'product_list_model.g.dart';

@JsonSerializable()
class ProductListModel {
  final List<Row>? rows;
  final int? total;

  const ProductListModel({this.rows, this.total});

  @override
  String toString() => 'ProductListModel(rows: $rows, total: $total)';

  factory ProductListModel.fromJson(Map<String, dynamic> json) {
    return _$ProductListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductListModelToJson(this);

  ProductListModel copyWith({
    List<Row>? rows,
    int? total,
  }) {
    return ProductListModel(
      rows: rows ?? this.rows,
      total: total ?? this.total,
    );
  }
}
