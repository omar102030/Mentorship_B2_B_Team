import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBox extends StatelessWidget {
  final double height;
  final double width;
  final Color? baseColor;
  final Color? highlightColor;
  final double? borderRadius;

  const ShimmerBox({
    super.key,
    required this.height,
    required this.width,
    this.baseColor,
    this.highlightColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius != null
          ? BorderRadius.circular(borderRadius!)
          : BorderRadius.zero,
      child: Shimmer.fromColors(
        baseColor: baseColor ?? Colors.grey[500]!,
        highlightColor: highlightColor ?? Colors.grey[300]!,
        child: SizedBox(
          height: height,
          width: width,
          child: Container(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
