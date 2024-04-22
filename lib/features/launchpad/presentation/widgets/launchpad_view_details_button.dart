import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/features/launchpad/data/models/launchpad_model.dart';

import '../../../../core/sharedWidgets/custom_button.dart';

class LaunchpadViewDetailsButton extends StatelessWidget {
  const LaunchpadViewDetailsButton({
    super.key,
    required this.launchpad,
  });

  final LaunchpadModel launchpad;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 8,
      bottom: 2,
      child: CustomButton(
        buttonPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        onTap: () {
          context.pushNamed(Routes.launchpadDetailScreen, arguments: launchpad);
        },
        text: 'View Details',
        buttonColor: ColorsManager.darkNavyBlueColor,
        foregroundColor: Colors.white,
      ),
    );
  }
}
