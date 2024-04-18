import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/launchpad/data/models/launchpad_model.dart';

import '../../../../core/routing/routes.dart';

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
              child: Image.network(launchpad.imageUrl)),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              launchpad.name,
              style: TextStyles.titleLarge,
            ),
          ),
          Positioned(
              right: 10,
              bottom: 10,
              child: Container(
                height: 30.h,
                decoration: BoxDecoration(
                    color: ColorsManager.darkNavyBlueColor,
                    borderRadius: BorderRadius.circular(15)),
                child: MaterialButton(
                    child: Text(
                      "View Details",
                      style: TextStyles.bodyMedium,
                    ),
                    onPressed: () {
                      context.pushNamed(Routes.launchpadDetailScreen,
                          arguments: launchpad);
                    }),
              ))
        ],
      ),
    );
  }
}
