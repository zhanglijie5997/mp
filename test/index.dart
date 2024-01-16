import 'dart:convert';

void main() {
  const input = "zlj";
  final baseEn = base64.encode(utf8.encode(input));
  // print(base64.encode(utf8.encode(input)));
  baseEn.split("");
}