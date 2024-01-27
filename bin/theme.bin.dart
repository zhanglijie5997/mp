/*
 * @Author: zhanglijie5997 42401363+zhanglijie5997@users.noreply.github.com
 * @Date: 2023-03-04 20:40:58
 * @LastEditors: zhanglijie5997 42401363+zhanglijie5997@users.noreply.github.com
 * @LastEditTime: 2023-03-14 15:59:29
 * @FilePath: /jdn/bin/theme.bin.dart
 * @Description: json生成主题配置
 */
import 'dart:io' as io;
import 'dart:convert' as convert;

String packageName = """import 'dart:ui';
import '../extension/string.ext.dart';
""";
String writePath = './lib/constants/base.theme.dart';
void main() async {
  io.File file = io.File('./assets/json/theme.json');
  String _ = await file.readAsString();
  final themeJson = convert.jsonDecode(_) as Map<String, dynamic>;
  String list = '''
$packageName
class BaseTheme {
''';

  // ignore: avoid_function_literals_in_foreach_calls
  themeJson.entries.forEach((e) {
    final k = e.key;
    final v = e.value;
    list += ('''    /// ${v['///']}
    static Color get ${k}Dark => '${v['dark']}'.color();
    static Color get ${k}Light => '${v['light']}'.color();\n''');
  });
  list += '}';
  writeFile(writePath, list, type: '📌theme ');
  createCustomTheme(themeJson);
}

createCustomTheme(Map<String, dynamic> themeJson) {
  String customWriteText = ''' 
      import 'package:flutter/material.dart';
      import 'package:mp/constants/base.theme.dart';
      class CustomTheme extends ThemeExtension<CustomTheme> {
  ''';
  themeJson.forEach((key, value) { 
    customWriteText += '''
      /// ${value['///']}
      Color? ${value['name']};
    ''';
  });
  
  customWriteText += " CustomTheme({";
  themeJson.forEach((key, value) { 
    customWriteText += '''
      /// ${value['///']}
      this.${value['name']},
    ''';
  });
  customWriteText += "});";
  
  customWriteText += ''' 
    @override
    ThemeExtension<CustomTheme> copyWith({
  ''';
  themeJson.forEach((key, value) { 
    customWriteText += "Color? ${value['name']},";
  });
  customWriteText += '''
    }) {
      return CustomTheme(
  ''';
  themeJson.forEach((key, value) { 
    customWriteText += ''' 
      ${value['name']}: ${value["name"]} ?? this.${value["name"]},
    ''';
  });
  customWriteText += ''');}''';


  customWriteText += ''' 
    @override
    ThemeExtension<CustomTheme> lerp(ThemeExtension<CustomTheme>? other, double t) {
    return CustomTheme();
    }
  ''';

  customWriteText += ''' 
    static CustomTheme get light => CustomTheme(
  ''';
  themeJson.forEach((key, value) { 
    customWriteText+= '''
      ${value['name']}: BaseTheme.${key}Light,
    ''';
  });
  customWriteText += ''' );''';

  customWriteText += ''' 
    static  CustomTheme get dark => CustomTheme(
  ''';
  themeJson.forEach((key, value) { 
    customWriteText+= '''
      ${value['name']}: BaseTheme.${key}Dark,
    ''';
  });
  customWriteText += '''  ); ''';

  customWriteText += "}";
  print(customWriteText);
  writeFile('./lib/constants/theme.custom.dart', customWriteText, type: "自定义颜色");
}

writeFile(String path, String v, {String type = ''}) async {
  final file = io.File(path);
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
