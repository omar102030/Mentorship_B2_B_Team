import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';

class CoreInfoWidget extends StatelessWidget {
  final String infoName;
  final String infoValue;
  final int animationTurn;
  final bool startAnimation;
  const CoreInfoWidget(
      {super.key,
      required this.infoName,
      required this.infoValue,
      required this.startAnimation,
      required this.animationTurn});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: double.infinity,
      duration: Duration(milliseconds: 300 + animationTurn * 100),
      curve: Curves.easeInOut,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      transform: Matrix4.translationValues(
          startAnimation ? 0 : MediaQuery.of(context).size.width, 0, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        children: [
          Text(
            infoName,
            style: TextStyles.titleSmall.copyWith(color: Colors.black),
          ),
          const Spacer(),
          Expanded(
              child: Text(
            infoValue,
            style: TextStyles.bodySmall.copyWith(color: Colors.black),
          )),
        ],
      ),
    );
  }
}
