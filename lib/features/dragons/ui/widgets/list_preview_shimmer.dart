import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:shimmer/shimmer.dart';

class ListPreviewShimmer extends StatelessWidget {
  final double? hight;
  const ListPreviewShimmer({super.key, this.hight});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[500]!,
        highlightColor: Colors.grey[300]!,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.r)),
                height: hight ?? 150.h,
              ),
            ),
            10.emptyWidth,
            Expanded(
              child: Container(
                height: hight ?? 150.h,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.r)),
              ),
            ),
          ],
        ));
  }
}
