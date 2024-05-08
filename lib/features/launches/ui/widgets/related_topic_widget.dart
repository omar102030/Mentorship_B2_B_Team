import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/launches/data/models/launch_model.dart';

class RelatedTopicWidget extends StatelessWidget {
  final RelatedTopicModel model;
  final VoidCallback onPressed;
  const RelatedTopicWidget(
      {super.key, required this.model, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Text(model.name, style: TextStyles.bodyMediumBlack),
    );
  }
}
