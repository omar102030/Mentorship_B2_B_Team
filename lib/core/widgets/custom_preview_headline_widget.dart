import 'package:flutter/material.dart';
import 'package:mentorship/core/theming/text_styles.dart';

class CustomHeadlineWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTab;
  const CustomHeadlineWidget(
      {super.key, required this.title, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.titleMedium,
        ),
        InkWell(
          onTap: onTab,
          child: Text(
            'View All',
            style: TextStyles.bodySmall,
          ),
        )
      ],
    );
  }
}
