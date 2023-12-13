import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

ThemeData darkTheme = ThemeData(
  primaryColor: ThemeColor.darkMainColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: ThemeColor.primaryColor,
    brightness: Brightness.dark,
    secondary: ThemeColor.darkMainColor,
  ),
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
  cardColor: ThemeColor.darkMainContainerColor,
  appBarTheme: AppBarTheme(
    backgroundColor: ThemeColor.darkMainColor,
    elevation: 0,
    titleTextStyle: TextStyle(fontSize: 18.sp),
    iconTheme: const IconThemeData(
      color: ThemeColor.whiteColor,
    ),
  ),
  scaffoldBackgroundColor: ThemeColor.darkMainColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ThemeColor.darkBottomNavColor,
    unselectedItemColor: ThemeColor.bottomUnSelectedColor,
    selectedItemColor: ThemeColor.bottomSelectedColor,
    elevation: 0,
  ),
  highlightColor: Colors.transparent,
  splashColor: ThemeColor.primaryColor,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 30.sp,
      color: ThemeColor.darkTextColor,
    ),
  ),
  dialogBackgroundColor: ThemeColor.darkMainContainerColor,
);
