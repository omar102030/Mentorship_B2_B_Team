import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/widgets/shimmer_box.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/launchpad/data/models/launchpad_model.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/theming/colors_manager.dart';
import 'bottom_positioned_shadow.dart';

class LaunchpadCard extends StatelessWidget {
  final LaunchpadModel launchpad;
  LaunchpadCard({
    super.key,
    required this.launchpad,
  });
  final _imageHeight = 237.h;
  final _imageWidth = double.infinity;
  @override
  Widget build(BuildContext context) {
    return Card(
      key: ValueKey(launchpad.id),
      margin: EdgeInsets.all(10.w),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              launchpad.imageUrl,
              height: _imageHeight,
              width: _imageWidth,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : ShimmerBox(height: _imageHeight, width: _imageWidth),
            ),
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
          Positioned(
            right: 8,
            bottom: 2,
            child: CustomButton(
              buttonPadding:
                  EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              onTap: () {
                context.pushNamed(Routes.launchpadDetailScreen,
                    arguments: launchpad);
              },
              text: 'View Details',
              buttonColor: ColorsManager.darkNavyBlueColor,
              foregroundColor: Colors.white,
            ),
          ),
          // LaunchpadViewDetailsButton(launchpad: launchpad),
          //TODO:thought about extracting everything but i guess we should make global
          // card widget for all features so it's redundant
        ],
      ),
    );
  }
}
