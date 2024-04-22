import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: width ?? MediaQuery.of(context).size.width / 2,
            height: hight ?? double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(dragonModel.flickrImages[1]),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          const BottomPositionedShadow(),
          Positioned(
            bottom: 10.h,
            left: 10.w,
            child: Text(
              dragonModel.name,
              style: TextStyles.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
