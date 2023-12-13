import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp/utils/storage.utils.dart';

const localMap = {
  "zh": Locale("zh", "CN"),
  "en": Locale("en", "US"),
};

class LanguageServices extends GetxService{
  static LanguageServices get  to => Get.find<LanguageServices>();
  
  Locale lang =  const Locale("zh", "CN");
  
  handleSetLang(String value) {
    lang = localMap[value] ?? const Locale("zh", "CN");
    Get.updateLocale(lang);
    StorageUtils().save(StorageKeys.lang, value);
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