import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/launchpad/data/models/launchpad_model.dart';

class ViewDetailsButton extends StatelessWidget {
  const ViewDetailsButton({
    super.key,
    required this.launchpad,
  });

  final LaunchpadModel launchpad;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
      ),
    );
  }
}
