import 'package:flutter/foundation.dart';

class AppConfig {
  /// 穿山甲广告
  static String get androidAppId => "5098580";

  /// 穿山甲广告
  static String get iosAppId => "5098580";

  /// 穿山甲广告
  static String get appName => "Meta-U";

  /// http 请求基础路径
  static String get httpUrl => "https://prodaiapi.hunanjiyun.com";

  /// http 请求超时时间
  static int get connectTimeout => 10000;

  /// 当前环境
  static String mode = "test";

  static List<BaseConfig> base = [
    BaseConfig(
        mode: "test",
        debugH5: false,
        serve: "https://prodaiapi.hunanjiyun.com",
        serverH5Pay: "https://prodai.hunanjiyun.com",
        target: kIsWeb ? "H5" : '')
  ];

  static BaseConfig currentBase() {
    // 不是正式环境就使用测试值
    if (!kReleaseMode) {
      return AppConfig.base
          .firstWhere((element) => element.mode == AppConfig.mode);
    } else {
      return AppConfig.base.last;
    }
  }
}

class BaseConfig {
  String? serverH5Pay;
  bool? debugH5;
  String? type;
  String? token;
  String? target;
  String? serve;
  String? mode;

  BaseConfig(
      {this.serverH5Pay,
      this.debugH5,
      this.type,
      this.token,
      this.target,
      this.serve,
      this.mode});

  BaseConfig.fromJson(Map<String, dynamic> json) {
    serverH5Pay = json['serverH5Pay'];
    debugH5 = json['debugH5'];
    type = json['type'];
    token = json['token'];
    target = json['target'];
    serve = json['serve'];
    mode = json['mode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['serverH5Pay'] = serverH5Pay;
    data['debugH5'] = debugH5;
    data['type'] = type;
    data['token'] = token;
    data['target'] = target;
    data['serve'] = serve;
    data['mode'] = mode;
    return data;
  }
}
