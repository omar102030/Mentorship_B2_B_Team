import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color buttonColor;
  final Color foregroundColor;
  final TextStyle? textStyle;
  final double? height;
  final double? width;

  final EdgeInsets? buttonPadding;
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.buttonColor = Colors.white,
      this.foregroundColor = Colors.black,
      this.textStyle,
      this.buttonPadding,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          fixedSize: (height == null && width == null)
              ? null
              : MaterialStateProperty.all<Size>(
                  Size(height ?? double.infinity, width ?? 30.h),
                ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          foregroundColor: MaterialStatePropertyAll(foregroundColor),
          backgroundColor: MaterialStatePropertyAll(
            buttonColor,
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            buttonPadding ??
                EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          ),
        ),
        child: Text(
          text,
          style: textStyle ??
              TextStyles.bodyMedium.copyWith(
                color: foregroundColor,
              ),
        ), );
  }
}
