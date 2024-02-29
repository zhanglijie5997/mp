import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final String? randomKey;
  final String? randomValue;
  final String? license;
  final String? mapArr;
  final String? rsaPublicContent;
  final dynamic sm2KeyHex;

  const Data({
    this.randomKey,
    this.randomValue,
    this.license,
    this.mapArr,
    this.rsaPublicContent,
    this.sm2KeyHex,
  });

  @override
  String toString() {
    return 'Data(randomKey: $randomKey, randomValue: $randomValue, license: $license, mapArr: $mapArr, rsaPublicContent: $rsaPublicContent, sm2KeyHex: $sm2KeyHex)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? randomKey,
    String? randomValue,
    String? license,
    String? mapArr,
    String? rsaPublicContent,
    dynamic sm2KeyHex,
  }) {
    return Data(
      randomKey: randomKey ?? this.randomKey,
      randomValue: randomValue ?? this.randomValue,
      license: license ?? this.license,
      mapArr: mapArr ?? this.mapArr,
      rsaPublicContent: rsaPublicContent ?? this.rsaPublicContent,
      sm2KeyHex: sm2KeyHex ?? this.sm2KeyHex,
    );
  }
}
