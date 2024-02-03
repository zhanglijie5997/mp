import 'dart:convert';
import 'dart:io';

class ApiFileModel {
  String? url;
  String? method;
  String? desc;
  String? name;
  ApiFileModel({this.url, this.method, this.desc, this.name});

  ApiFileModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    method = json['method'];
    desc = json['desc'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['method'] = method;
    data['desc'] = desc;
    data['name'] = name;
    return data;
  }
}


/// 写入路径
String writeFilePath = "./lib/api/api.dart";
/// 读取路径
String readFilePath = "./assets/json/api.json";
void main() async{
  File file = File(readFilePath);  
  String res = await file.readAsString();
  final apiJson = (jsonDecode(res) as List<dynamic>);
  final api = apiJson.map((e) => ApiFileModel.fromJson(e));
  String writeString = '''
    class ApiName {
  ''';
  for (var element in api) {
    String url = "";
    ((element.name??element.url))?.split("/").forEach((e) {
      if (e.isNotEmpty) {
        if (e[0].runtimeType == String) {
          url += e[0].toUpperCase() + e.substring(1);
        }
      }
    });
    writeString += '''
      /// * 名称: ${element.desc} 请求方式: ${element.method}
      static String get $url => "${element.url}";
    ''';
  }
  writeString += "}";
  writeFile(writeFilePath, writeString, type: "接口名称");
}

writeFile(String path, String v, {String type = ''}) async {
  final file = File(path);
  // 文件存在就删除
  if (await file.exists()) {
    final _ = file.create();
  }
  try {
    await file.writeAsString(v);
    print('✅ $type 写入成功');
  } catch (e) {
    print('🙅 写入失败$e');
  }
}