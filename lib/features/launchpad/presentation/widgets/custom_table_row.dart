import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/colors_manager.dart';

import '../../../../core/theming/text_styles.dart';

TableRow CustomTableRow({required String title, required String value}) {
  return TableRow(
    decoration: BoxDecoration(
      color: ColorsManager.darkCyanBlueColor,
      // backgroundBlendMode: BlendMode.softLight,
      border: Border.all(color: ColorsManager.scaffoldColor, width: 2),
    ),
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
        child: Text(
          title,
          style: TextStyles.bodyMedium,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
        child: Text(
          value,
          style: TextStyles.bodyMedium,
        ),
      ),
    ],
  );
}
