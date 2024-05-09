import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/dragons/data/models/dragon_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/assets/app_assets.dart';

class DragonPrototypePreview extends StatelessWidget {
  final DragonModel dragonModel;
  const DragonPrototypePreview({super.key, required this.dragonModel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    AppImages.dragonPrototype,
                    height: 200.h,
                    width: 200.w,
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        AppImages.kg,
                        height: 30.h,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                      5.emptyHight,
                      Text(
                        dragonModel.dryMassKg.toString(),
                        style: TextStyles.bodySmall,
                      )
                    ],
                  ),
                  Positioned(
                      bottom: 100.h,
                      right: 10.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            AppImages.curve,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dragonModel.sideWallAngleDegree.toString(),
                                style: TextStyles.bodySmall,
                              ),
                              SvgPicture.asset(
                                AppImages.circle,
                                height: 5,
                                colorFilter: const ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
                              )
                            ],
                          )
                        ],
                      )),
                ],
              ),
              Container(
                width: 170.w,
                height: 6,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.white, width: 1),
                    right: BorderSide(color: Colors.white, width: 1),
                    left: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
              ),
              Container(
                height: 5.h,
                color: Colors.white,
                width: 1,
              ),
              Text(
                '${dragonModel.diameter.meters.toString()} Meters',
                style: TextStyles.bodySmall,
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 200.h,
                width: 5.w,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.white, width: 1),
                    right: BorderSide(color: Colors.white, width: 1),
                    bottom: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
              ),
              Container(
                height: 1.h,
                width: 10.w,
                color: Colors.white,
              ),
              4.emptyWidth,
              Text(
                '${dragonModel.hight.meters.toString()} Meters',
                style: TextStyles.bodySmall,
              )
            ],
          ),
        ],
      ),
    );
  }
}
