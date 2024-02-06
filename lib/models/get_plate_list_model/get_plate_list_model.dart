import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_plate_list_model.g.dart';

@JsonSerializable()
class GetPlateListModel {
  final bool? success;
  final String? resultCode;
  final List<Datum>? data;
  final String? dateTime;

  const GetPlateListModel({
    this.success,
    this.resultCode,
    this.data,
    this.dateTime,
  });

  @override
  String toString() {
    return 'GetPlateListModel(success: $success, resultCode: $resultCode, data: $data, dateTime: $dateTime)';
  }

  factory GetPlateListModel.fromJson(Map<String, dynamic> json) {
    return _$GetPlateListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetPlateListModelToJson(this);

  GetPlateListModel copyWith({
    bool? success,
    String? resultCode,
    List<Datum>? data,
    String? dateTime,
  }) {
    return GetPlateListModel(
      success: success ?? this.success,
      resultCode: resultCode ?? this.resultCode,
      data: data ?? this.data,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
