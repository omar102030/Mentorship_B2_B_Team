import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/launchpad/data/models/launchpad_model.dart';

import 'bottom_positioned_shadow.dart';
import 'view_details_button.dart';

class LaunchpadCard extends StatelessWidget {
  LaunchpadModel launchpad;
  LaunchpadCard({
    super.key,
    required this.launchpad,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.w),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(launchpad.imageUrl),
          ),
          const BottomPositionedShadow(),
          Positioned(
            bottom: 10.h,
            left: 10.w,
            child: Text(
              launchpad.name,
              style: TextStyles.titleLarge,
            ),
          ),
          ViewDetailsButton(launchpad: launchpad),
        ],
      ),
    );
  }
}
