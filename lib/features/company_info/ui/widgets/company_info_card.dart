import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/widgets/custom_button.dart';
import 'package:mentorship/core/widgets/shimmer_box.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/company_info/logic/cubit/company_info_cubit.dart';
import 'package:mentorship/features/company_info/logic/cubit/company_info_state.dart';
import 'package:mentorship/features/company_info/ui/widgets/custom_info_text_widget.dart';

import '../../../../core/di/get_it_setup.dart';

class CompanyInfoCard extends StatelessWidget {
  const CompanyInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CompanyInfoCubit>()..emitGetCompanyInfo(),
      child: BlocBuilder<CompanyInfoCubit, CompanyInfoState>(
        builder: (context, state) {
          if (state is CompanyInfoLoaded) {
            final companyInfo = state.data;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Company Info :-',
                  style: TextStyles.titleMedium,
                ),
                10.emptyHight,
                Stack(children: [
                  Container(
                    decoration: BoxDecoration(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/spacex-logo.png',
                                height: 25.h,
                              ),
                              const Spacer(),
                              CustomInfoTextWidget(
                                  firstText: 'Founder/Ceo :  ',
                                  seconedText: companyInfo.ceo),
                              5.emptyHight,
                              CustomInfoTextWidget(
                                  firstText: 'Coo :  ',
                                  seconedText: companyInfo.coo),
                              5.emptyHight,
                              CustomInfoTextWidget(
                                  firstText: 'Cto Propulsion :  ',
                                  seconedText: companyInfo.ctoPropulsion),
                              5.emptyHight,
                              CustomInfoTextWidget(
                                  firstText: 'Valuation :  ',
                                  seconedText: '${companyInfo.valuation} \$'),
                              const Spacer(),
                              CustomButton(
                                onTap: () {},
                                text: 'View Details',
                                buttonColor: Colors.black,
                                textStyle: TextStyles.bodyMedium,
                              )
                            ],
                          )),
                    ),
                  ),
                  Positioned(
                      top: 30.h,
                      bottom: 30.h,
                      right: 5.w,
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: ColorsManager.scaffoldColor, width: 3),
                            image: const DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: CachedNetworkImageProvider(
                                    'https://i.redd.it/diq7uy1paooc1.png'))),
                      )),
                ]),
              ],
            );
          } else {
            return ShimmerBox(
              height: 200.h,
              width: double.infinity,
              borderRadius: 5.r,
            );
          }
        },
      ),
    );
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
