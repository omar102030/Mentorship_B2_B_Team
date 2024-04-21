import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class CustomInfoTextWidget extends StatelessWidget {
  final String firstText;
  final String seconedText;
  const CustomInfoTextWidget(
      {super.key, required this.firstText, required this.seconedText});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: firstText,
              style:
                  TextStyles.bodySmall.copyWith(fontWeight: FontWeight.bold)),
          TextSpan(
            text: seconedText,
            style: TextStyles.bodyMediumBlack.copyWith(fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
