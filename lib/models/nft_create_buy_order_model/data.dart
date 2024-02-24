import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final String? orderId;
  final int? amount;
  final int? num;
  final String? productName;

  const Data({this.orderId, this.amount, this.num, this.productName});

  @override
  String toString() {
    return 'Data(orderId: $orderId, amount: $amount, num: $num, productName: $productName)';
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? orderId,
    int? amount,
    int? num,
    String? productName,
  }) {
    return Data(
      orderId: orderId ?? this.orderId,
      amount: amount ?? this.amount,
      num: num ?? this.num,
      productName: productName ?? this.productName,
    );
  }
}
