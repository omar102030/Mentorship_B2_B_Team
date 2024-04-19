import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/topics_screen/enums/topics_enum.dart';

class TopicWidget extends StatelessWidget {
  final TopicsEnum topic;
  final bool isPicked;
  final VoidCallback onTap;
  const TopicWidget(
      {super.key,
      required this.topic,
      required this.onTap,
      required this.isPicked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: Colors.white),
            color: isPicked ? Colors.white : null),
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 7.h),
        child: Text(
          topic.humanReadableName,
          style: isPicked ? TextStyles.bodyMediumBlack : TextStyles.bodyMedium,
        ),
      ),
    );
  }
}
