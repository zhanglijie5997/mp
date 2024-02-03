import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'accomoun_tab_list_model.g.dart';

@JsonSerializable()
class AccomounTabListModel {
  final bool? success;
  final String? resultCode;
  final List<Datum>? data;
  final String? dateTime;

  const AccomounTabListModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'AccomounTabListModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory AccomounTabListModel.fromJson(Map<String, dynamic> json) {
    return _$AccomounTabListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccomounTabListModelToJson(this);

  AccomounTabListModel copyWith({
    bool? success,
    String? resultCode,
    List<Datum>? data,
    String? dateTime,
  }) {
    return AccomounTabListModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
