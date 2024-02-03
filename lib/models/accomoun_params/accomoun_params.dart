import 'package:json_annotation/json_annotation.dart';

part 'accomoun_params.g.dart';

@JsonSerializable()
class AccomounParams {
  final int? current;
  final int? row;
  final String? type;
  const AccomounParams({this.current, this.row, this.type});

  @override
  String toString() => 'AccomounParams(current: $current, row: $row, type: $type)';

  factory AccomounParams.fromJson(Map<String, dynamic> json) {
    return _$AccomounParamsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccomounParamsToJson(this);

  AccomounParams copyWith({
    int? current,
    int? row,
    String? type,
  }) {
    return AccomounParams(
      current: current ?? this.current,
      row: row ?? this.row,
      type: type ?? this.type
    );
  }
}
