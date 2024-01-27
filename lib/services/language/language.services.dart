import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/utils/log.utils.dart';
import 'package:mp/utils/storage.utils.dart';

const localMap = {
  "zh": Locale("zh", "CN"),
  "en": Locale("en", "US"),
};

class LanguageServices extends GetxService {
  static LanguageServices get to => Get.find<LanguageServices>();

  Locale lang = const Locale("zh", "CN");

  final langCode = "zh".obs;

  handleSetLang(String value) {
    lang = localMap[value] ?? const Locale("zh", "CN");
    langCode.value = value;
    LogUtil.w("语言切换 $value");
    StorageUtils().save(StorageKeys.lang, value);
    Get.updateLocale(lang);
  }

  @override
  void onInit() {
    final currentLang = StorageUtils().ready<String?>(StorageKeys.lang);
    if (currentLang != null) {
      lang = localMap[currentLang] ?? const Locale("en", "US");
    }
    super.onInit();
  }
}
