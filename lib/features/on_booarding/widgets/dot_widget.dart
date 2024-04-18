import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/colors_manager.dart';

class DotWidget extends StatelessWidget {
  final int index;
  final int dotIndex;
  const DotWidget({super.key, required this.index, required this.dotIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: dotIndex == index ? 25.w : 10.w,
      margin: EdgeInsets.only(right: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: ColorsManager.lightGreyColor,
      ),
    );
  }
}
