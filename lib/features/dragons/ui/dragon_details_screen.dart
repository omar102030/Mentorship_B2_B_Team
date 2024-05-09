import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/assets/app_assets.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/widgets/default_appbar.dart';
import 'package:mentorship/core/widgets/shimmer_box.dart';
import 'package:mentorship/features/dragons/data/models/dragon_model.dart';
import 'package:mentorship/features/dragons/ui/widgets/dragon_details_table.dart';
import 'package:mentorship/features/dragons/ui/widgets/dragon_prototype_preview.dart';
import 'package:mentorship/features/dragons/ui/widgets/thruster_card_widget.dart';
import 'package:mentorship/features/launchpad/presentation/widgets/bottom_positioned_shadow.dart';

import '../../../core/theming/text_styles.dart';

class DragonDetailsScreen extends StatelessWidget {
  final DragonModel model;
  const DragonDetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.r),
                    child: CachedNetworkImage(
                        imageUrl: model.flickrImages[1],
                        width: double.infinity,
                        height: 250.h,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            ShimmerBox(height: 200.h, width: double.infinity)),
                  ),
                  const BottomPositionedShadow(),
                  Positioned(
                    bottom: 10.h,
                    left: 10.w,
                    child: Text(
                      model.name,
                      style: TextStyles.titleLarge,
                    ),
                  ),
                ],
              ),
              16.emptyHight,
              DragonPrototypePreview(dragonModel: model),
              16.emptyHight,
              Text(
                model.description,
                style: TextStyles.bodyMedium,
              ),
              8.emptyHight,
              InkWell(
                onTap: () {
                  context.pushNamed(Routes.webViewScreen,
                      arguments: model.wikipediaLink);
                },
                child: Image.asset(
                  AppImages.wikipediaImage,
                  height: 40.h,
                ),
              ),
              8.emptyHight,
              DragonDetailsTable(dragonModel: model),
              16.emptyHight,
              Text(
                'Thrusters',
                style: TextStyles.titleMedium,
              ),
              10.emptyHight,
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      ThrusterCard(thruster: model.thrusters[index]),
                  separatorBuilder: (context, index) => 10.emptyHight,
                  itemCount: model.thrusters.length)
            ],
          ),
        ),
      ),
    );
  }
}
