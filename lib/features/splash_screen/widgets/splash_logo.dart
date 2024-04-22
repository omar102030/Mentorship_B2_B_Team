import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mentorship/core/assets/app_assets.dart';
import 'package:mentorship/core/helpers/extensions.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(AppImages.logo),
          6.emptyHight,
          SizedBox(
            height: 50.h,
            child: const SpinKitThreeBounce(
              color: Colors.white,
              size: 25.0,
            ),
          )
        ],
      ),
    );
  }
}
