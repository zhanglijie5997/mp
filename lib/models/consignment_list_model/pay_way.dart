import 'package:json_annotation/json_annotation.dart';

part 'pay_way.g.dart';

@JsonSerializable()
class PayWay {
  final String? url;
  final String? name;
  final int? value;

  const PayWay({this.url, this.name, this.value});

  @override
  String toString() => 'PayWay(url: $url, name: $name, value: $value)';

  factory PayWay.fromJson(Map<String, dynamic> json) {
    return _$PayWayFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PayWayToJson(this);

  PayWay copyWith({
    String? url,
    String? name,
    int? value,
  }) {
    return PayWay(
      url: url ?? this.url,
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }
}
