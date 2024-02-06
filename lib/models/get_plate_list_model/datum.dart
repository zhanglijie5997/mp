import 'package:json_annotation/json_annotation.dart';

import 'plate_mint.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  final String? plateId;
  final String? name;

  const Datum({
    this.plateId,
    this.name,
  });

  @override
  String toString() {
    return 'Datum(plateId: $plateId, name: $name)';
  }

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    String? plateId,
    String? name,
    int? label,
    String? labelStr,
    List<PlateMint>? plateMints,
  }) {
    return Datum(
      plateId: plateId ?? this.plateId,
      name: name ?? this.name,
    );
  }
}
