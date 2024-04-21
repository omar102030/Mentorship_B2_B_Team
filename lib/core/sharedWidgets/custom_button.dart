import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? buttonColor;
  final TextStyle? textStyle;

  final EdgeInsets? buttonPadding;
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.buttonColor,
      this.textStyle,
      this.buttonPadding});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            buttonColor ?? Colors.white,
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            buttonPadding ??
                EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          ),
        ),
        child: Text(
          text,
          style:
              textStyle ?? TextStyles.bodyMedium.copyWith(color: Colors.black),
        ));
  }
}
