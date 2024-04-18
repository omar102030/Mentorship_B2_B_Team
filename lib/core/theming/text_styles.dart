import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle bodySmall = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.secondaryTextColor,
  );

  static TextStyle bodyMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );

  static TextStyle bodyMediumBlack = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );

  static TextStyle bodyLarge = TextStyle(
    // fontSize: 14.sp,
    // fontWeight: FontWeightHelper.regular,
    // color: Colors.white,
  );

  static TextStyle titleSmall = TextStyle(
    // fontSize: 14.sp,
    // fontWeight: FontWeightHelper.regular,
    // color: Colors.white,
  );

  static TextStyle titleMedium = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );

  static TextStyle titleLarge = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
}