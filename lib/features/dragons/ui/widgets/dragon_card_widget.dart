import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/widgets/shimmer_box.dart';
import 'package:mentorship/features/dragons/data/models/dragon_model.dart';
import 'package:mentorship/features/launchpad/presentation/widgets/bottom_positioned_shadow.dart';

import '../../../../core/theming/text_styles.dart';

class DragonCardWidget extends StatelessWidget {
  final DragonModel dragonModel;
  final double? hight;
  final double? width;
  const DragonCardWidget(
      {super.key, required this.dragonModel, this.hight, this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.dragonDetailsScreen, arguments: dragonModel);
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: CachedNetworkImage(
              height: hight ?? double.infinity,
              width: width ?? MediaQuery.of(context).size.width / 2,
              placeholder: (context, url) => ShimmerBox(
                  height: hight ?? double.infinity,
                  width: width ?? MediaQuery.of(context).size.width / 2),
              fit: BoxFit.cover,
              imageUrl: dragonModel.flickrImages[1],
            ),
          ),
          const BottomPositionedShadow(),
          FittedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Text(
                dragonModel.name,
                style: TextStyles.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
