#!/bin/bash
bin_path=$(cd `dirname $0` || exit; pwd)
cd "$bin_path" || exit
cd  ../
rootPath=$(pwd)
dart "$rootPath/bin/theme.bin.dart"
# dart "$rootPath/bin/iconfont.bin.dart"
dart "$rootPath/bin/api.bin.dart"
get generate locales assets/language
dart format $rootPath/lib/constants/base.theme.dart 
dart format $rootPath/lib/api/api.dart 
dart format $rootPath/lib/constants/theme.custom.dart
# dart format $rootPath/lib/constants/constants.dart
