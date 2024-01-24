#!/bin/bash
bin_path=$(cd `dirname $0` || exit; pwd)
cd "$bin_path" || exit
cd  ../
rootPath=$(pwd)
dart "$rootPath/bin/theme.bin.dart"
# dart "$rootPath/bin/iconfont.bin.dart"
get generate locales assets/language
dart format $rootPath/lib/constants/base.theme.dart 
# dart format $rootPath/lib/constants/constants.dart
