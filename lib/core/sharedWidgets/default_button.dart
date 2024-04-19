import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? buttonColor;
  final TextStyle? textStyle;
  final double? hight;
  final double? width;
  final EdgeInsetsGeometry? buttonPadding;
  const DefaultButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.buttonColor,
      this.textStyle,
      this.hight,
      this.width,
      this.buttonPadding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: hight,
          width: width,
          padding: buttonPadding ??
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          decoration: BoxDecoration(
            color: buttonColor ?? Colors.white,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Text(
            text,
            style: textStyle ??
                TextStyles.bodyMedium.copyWith(color: Colors.black),
          ),
        ));
  }
}
