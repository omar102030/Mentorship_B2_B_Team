import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomPositionedShadow extends StatelessWidget {
  const BottomPositionedShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: 50,
      child: Container(
        height: 100.h,
        color: Colors.black.withOpacity(0.2),
      ),
    );
  }
}
