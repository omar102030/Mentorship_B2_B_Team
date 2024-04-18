import 'package:flutter/material.dart';
import 'package:mentorship/core/theming/colors_manager.dart';

ThemeData lightTheme()=>ThemeData(
    scaffoldBackgroundColor: ColorsManager.scaffoldColor,
    primaryColor: Colors.white,

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      color: ColorsManager.scaffoldColor
    ),

    iconTheme: const IconThemeData(color: ColorsManager.defaultFilledIconColor),

    fontFamily: "nasalization"
    );