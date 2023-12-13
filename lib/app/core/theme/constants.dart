import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'colors.dart';

class StyleConstants {
  static SizedBox formSpacer8H = SizedBox(height: 8.h);
  static SizedBox formSpacer15H = SizedBox(height: 15.h);
  static SizedBox formSpacer10H = SizedBox(height: 10.h);
  static SizedBox formSpacer20H = SizedBox(height: 20.h);
  static SizedBox formSpacer30H = SizedBox(height: 30.h);

  static Padding screenPadding = const Padding(padding: EdgeInsets.all(16));

  static const leftRightSpacer = 21.0;
  static final formHeaderStyle = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold);

  static final OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.0),
    borderSide: const BorderSide(color: ThemeColor.primaryColor),
  );

  static final OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.0),
    borderSide: const BorderSide(color: ThemeColor.primaryColor),
  );

  static final OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.0),
    borderSide: const BorderSide(color: Colors.red),
  );

  static final OutlineInputBorder focusedErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.0),
    borderSide: const BorderSide(color: ThemeColor.primaryColor),
  );

  static final formTextStyle = TextStyle(
    color: ThemeColor.primaryColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
  );

  static final notFoundTextStyle = TextStyle(
    color: Get.isDarkMode ? ThemeColor.whiteColor : ThemeColor.infoTextColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
  );

  static final boxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 1,
    blurRadius: 1,
    offset: const Offset(
      0,
      1, // to move the shadow downwards by 3 pixels.
    ), // changes position of shadow,
  );
}
