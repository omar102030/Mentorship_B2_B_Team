import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/sharedWidgets/custom_button.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/core/theming/text_styles.dart';

class CompanyInfoCard extends StatelessWidget {
  const CompanyInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(10.r)),
        child: ClipPath(
          clipper: CustomClipPath(),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Colors.white,
              ),
              height: 200.h,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/spacex-logo.png',
                      height: 25.h,
                    ),
                    const Spacer(),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Founder/Ceo :  ',
                              style: TextStyles.bodySmall
                                  .copyWith(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: 'Elon Musk',
                            style: TextStyles.bodyMediumBlack
                                .copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                    5.ph,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Coo :  ',
                              style: TextStyles.bodySmall
                                  .copyWith(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: 'Gwynne Shotwell',
                            style: TextStyles.bodyMediumBlack
                                .copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                    5.ph,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Cto Propulsion :  ',
                              style: TextStyles.bodySmall
                                  .copyWith(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: 'Tom Mueller',
                            style: TextStyles.bodyMediumBlack
                                .copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                    5.ph,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Valuation :  ',
                              style: TextStyles.bodySmall
                                  .copyWith(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '74000000000 \$',
                            style: TextStyles.bodyMediumBlack
                                .copyWith(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    CustomButton(
                      onTap: () {},
                      text: 'View Details',
                      buttonColor: Colors.black,
                      textStyle: TextStyles.bodyMedium,
                    )
                  ],
                ),
              )),
        ),
      ),
      Positioned(
          top: 25.h,
          bottom: 30.h,
          right: 5.w,
          child: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(color: ColorsManager.scaffoldColor, width: 3),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                        'https://i.redd.it/diq7uy1paooc1.png'))),
          )),
    ]);
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h);
    path.lineTo(w, h);
    path.quadraticBezierTo(w * 0.6, h * 0.5, w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
