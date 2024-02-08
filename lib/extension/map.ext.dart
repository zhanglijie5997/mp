import 'dart:convert';

extension MapExt on Map {
  String encode() {
    return jsonEncode(this);
  }
}
