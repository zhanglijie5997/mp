import 'package:json_annotation/json_annotation.dart';

import 'row.dart';

part 'nft_order_get_order_list_model.g.dart';

@JsonSerializable()
class NftOrderGetOrderListModel {
  final List<Row>? rows;
  final int? total;

  const NftOrderGetOrderListModel({this.rows, this.total});

  @override
  String toString() {
    return 'NftOrderGetOrderListModel(rows: $rows, total: $total)';
  }

  factory NftOrderGetOrderListModel.fromJson(Map<String, dynamic> json) {
    return _$NftOrderGetOrderListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NftOrderGetOrderListModelToJson(this);

  NftOrderGetOrderListModel copyWith({
    List<Row>? rows,
    int? total,
  }) {
    return NftOrderGetOrderListModel(
      rows: rows ?? this.rows,
      total: total ?? this.total,
    );
  }
}
