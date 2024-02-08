import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'user_product_list_model.g.dart';

@JsonSerializable()
class UserProductListModel {
  final bool? success;
  final String? resultCode;
  final List<Datum>? data;
  final String? dateTime;

  const UserProductListModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'UserProductListModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory UserProductListModel.fromJson(Map<String, dynamic> json) {
    return _$UserProductListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserProductListModelToJson(this);

  UserProductListModel copyWith({
    bool? success,
    String? resultCode,
    List<Datum>? data,
    String? dateTime,
  }) {
    return UserProductListModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
