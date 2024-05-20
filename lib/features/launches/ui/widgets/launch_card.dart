import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/widgets/shimmer_box.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../launchpad/presentation/widgets/bottom_positioned_shadow.dart';
import '../../data/models/launch_model.dart';

class LaunchCard extends StatelessWidget {
  final LaunchModel launchModel;
  const LaunchCard({super.key, required this.launchModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.launchDetailsScreen, arguments: launchModel);
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: CachedNetworkImage(
              height: 250.h,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  ShimmerBox(height: 250.h, width: double.infinity),
              imageUrl: launchModel.links.flickr.original.isNotEmpty
                  ? launchModel.links.flickr.original.first!
                  : launchModel.links.patch.large ??
                      'https://img.freepik.com/free-photo/rocket-flying-through-space_23-2150378599.jpg?t=st=1714984768~exp=1714988368~hmac=562ebbd114c70a21f648b529ba92278bf1bb1d644df894b73d6762fa3874218b&w=996',
            ),
          ),
          const BottomPositionedShadow(),
          FittedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Text(
                launchModel.name,
                style: TextStyles.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
