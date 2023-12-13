import 'package:flutter/material.dart';

class ThemeColor {
  //Static Colors
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const bgGrayColor = Color(0xFFF5F5F5);
  static const primaryColor = Color(0xFFFF6A59);
  static const dividerColor = Color(0xFF5F5F5F);
  static const grayInputForm = Color(0xFFEFF0F6);

  // LightColors
  static const lightBgColor = Color(0xFFEFEFEF);
  static const lightTextColor = Color(0xFF333333);
  static const lightTicketsIconColor = Color(0xFF333333);
  static const lightUncheckedCalendarColor = Color(0xFFDCDCDC);
  static const lightMainContainerColor = Colors.white;
  static const lightBottomNavColor = Colors.white;
  static const lightBodyTextColor = Color(0xFFB8B8B8);
  // Dark Colors
  static const darkTextColor = Colors.white;
  static const darkMainColor = Color(0xFF111111);
  static const darkTicketsIconColor = Colors.white;
  static const darkUncheckedCalendarColor = Color(0xFF707070);
  static const darkMainContainerColor = Color(0xFF222222);
  static const darkBottomNavColor = Color(0xFF222222);
  // Widgets Colors
  static const errorBtnColor = Color.fromARGB(255, 233, 48, 48);
  static const bottomSelectedColor = Color(0xFF7B72F1);
  static const bottomUnSelectedColor = Color(0xFF929292);
  static const infoTextColor = Color.fromARGB(255, 148, 148, 148);
  static const infoButtonColor = Color(0xFFE0A750);
  static const confColor = Color(0xFF09B22E);
  static const uncheckedGenderColor = Color(0xFF222222);
  static const profileIconsColor = Color(0xFF7B72F1);
  static const cancelBtnColor = Color(0xFFE05050);
  static const addCount = Color(0xFF212135);

  // static const primaryColor = Color(0xFF85BCF1);
  static const newRestLightBgColor = Color(0xFFF2F8FF);
  static const bottomNavIconsColor = Color.fromARGB(255, 166, 195, 227);
  static const bottomNavIconsColorBack = Color.fromARGB(255, 0, 123, 255);

  // Gradient Colors
  static const gradient = LinearGradient(
    colors: [
      // Color(0xFFD1BDFF),
      // Color(0xFFA9C3C7),
      Color(0xFF7B72F1),
      Color(0xFF8b7def),
      Color(0xFF8c7ef0),
      Color(0xFF9381ef),
      Color(0xFF9c87ee),
      Color(0xFFb296eb),
      Color(0xFFB99AEA),
    ],
  );

  //Theatre seats colors
  static const haveSeatColor = Color(0xFF2D5C37);
  static const noSeatColor = Color(0xFFE05050);
  static const reservedSeatColor = Color(0xFF7B72F1);

  // error color
  static const errorColor = Color(0xffb00020);

  static const MaterialColor primaryMaterialColor = MaterialColor(0xFF9581FF, <int, Color>{
    50: Color(0xFFEFECFF),
    100: Color(0xFFD7D0FF),
    200: Color(0xFFBDB0FF),
    300: Color(0xFFA390FF),
    400: Color(0xFF8F79FF),
    500: Color(0xFF7B61FF),
    600: Color(0xFF7359FF),
    700: Color(0xFF684FFF),
    800: Color(0xFF5E45FF),
    900: Color(0xFF6C56DD),
  });

  static const kTileHeight = 50.0;

  static const completeColor = Color(0xff5e6172);
  static const inProgressColor = Color(0xff5ec792);
  static const todoColor = Color(0xffd1d2d7);
}
