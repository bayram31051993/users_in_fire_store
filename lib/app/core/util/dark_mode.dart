import 'package:flutter/material.dart';

// import '../../app.dart';

class DarkMode {
  static ThemeMode getThemeMode() {
    var themeMode = ThemeMode.light; //isDarkMode ? ThemeMode.dark : ThemeMode.light;
    return themeMode;
  }

  // static void onChangeTheme() {
  //   Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
  // }
}
