import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Comfortaa',
  primaryColor: ThemeColor.primaryColor,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: ThemeColor.primaryColor,
    secondary: ThemeColor.lightBgColor,
  ),
  bottomSheetTheme:
      const BottomSheetThemeData(backgroundColor: Colors.transparent),
  cardColor: ThemeColor.lightMainContainerColor,
  appBarTheme: AppBarTheme(
    backgroundColor: ThemeColor.lightBgColor,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: 'Comfortaa',
      color: ThemeColor.lightTextColor,
      fontSize: 18.sp,
    ),
    iconTheme: const IconThemeData(
      color: ThemeColor.blackColor,
    ),
  ),
  scaffoldBackgroundColor: ThemeColor.whiteColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    // backgroundColor: Colors.whiteColor,
    // unselectedItemColor: Colors.blackColor,
    selectedItemColor: ThemeColor.primaryColor,
    elevation: 0,
  ),
  highlightColor: Colors.transparent,
  primaryIconTheme: const IconThemeData(color: ThemeColor.blackColor),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w500,
      fontSize: 30.sp,
      color: ThemeColor.lightTextColor,
    ),
  ),
  cardTheme: const CardTheme(),
);




/*
displayLarge: TextStyle(debugLabel: 'tall displayLarge 2021', inherit: false, fontSize: 57.0, fontWeight: FontWeight.w400, letterSpacing: -0.25, height: 1.12, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    displayMedium: TextStyle(debugLabel: 'tall displayMedium 2021', inherit: false, fontSize: 45.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.16, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    displaySmall: TextStyle(debugLabel: 'tall displaySmall 2021', inherit: false, fontSize: 36.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.22, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
   
    headlineLarge: TextStyle(debugLabel: 'tall headlineLarge 2021', inherit: false, fontSize: 32.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.25, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    headlineMedium: TextStyle(debugLabel: 'tall headlineMedium 2021', inherit: false, fontSize: 28.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.29, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    headlineSmall: TextStyle(debugLabel: 'tall headlineSmall 2021', inherit: false, fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
   
    titleLarge: TextStyle(debugLabel: 'tall titleLarge 2021', inherit: false, fontSize: 22.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.27, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    titleMedium: TextStyle(debugLabel: 'tall titleMedium 2021', inherit: false, fontSize: 16.0, fontWeight: FontWeight.w500, letterSpacing: 0.15, height: 1.50, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    titleSmall: TextStyle(debugLabel: 'tall titleSmall 2021', inherit: false, fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
   
    labelLarge: TextStyle(debugLabel: 'tall labelLarge 2021', inherit: false, fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    labelMedium: TextStyle(debugLabel: 'tall labelMedium 2021', inherit: false, fontSize: 12.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    labelSmall: TextStyle(debugLabel: 'tall labelSmall 2021', inherit: false, fontSize: 11.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.45, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
   
    bodyLarge: TextStyle(debugLabel: 'tall bodyLarge 2021', inherit: false, fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5, height: 1.50, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    bodyMedium: TextStyle(debugLabel: 'tall bodyMedium 2021', inherit: false, fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
    bodySmall: TextStyle(debugLabel: 'tall bodySmall 2021', inherit: false, fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),

*/