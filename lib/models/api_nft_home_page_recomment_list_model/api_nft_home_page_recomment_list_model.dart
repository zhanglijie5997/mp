import 'package:json_annotation/json_annotation.dart';

import 'row.dart';

part 'api_nft_home_page_recomment_list_model.g.dart';

@JsonSerializable()
class ApiNftHomePageRecommentListModel {
  final List<Row>? rows;
  final int? total;

  const ApiNftHomePageRecommentListModel({this.rows, this.total});

  @override
  String toString() {
    return 'ApiNftHomePageRecommentListModel(rows: $rows, total: $total)';
  }

  factory ApiNftHomePageRecommentListModel.fromJson(Map<String, dynamic> json) {
    return _$ApiNftHomePageRecommentListModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ApiNftHomePageRecommentListModelToJson(this);
  }

  ApiNftHomePageRecommentListModel copyWith({
    List<Row>? rows,
    int? total,
  }) {
    return ApiNftHomePageRecommentListModel(
      rows: rows ?? this.rows,
      total: total ?? this.total,
    );
  }
}
