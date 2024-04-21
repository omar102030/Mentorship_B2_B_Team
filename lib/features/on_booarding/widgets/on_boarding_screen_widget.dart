import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/sharedWidgets/default_button.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/on_booarding/enums/on_boarding_screens_enum.dart';
import 'package:mentorship/features/on_booarding/widgets/dot_widget.dart';

class OnBoardingScreenWidget extends StatelessWidget {
  final OnBoardingScreensEnum screenContent;
  const OnBoardingScreenWidget({super.key, required this.screenContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(screenContent.image),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            100.ph,
            Text(
              screenContent.title,
              style: TextStyles.titleLarge,
            ),
            20.ph,
            Text(
              screenContent.text,
              style: TextStyles.bodyMedium,
            ),
            15.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                3,
                (index) => DotWidget(dotIndex: index, index: screenContent.i),
              ),
            ),
            15.ph,
            screenContent.i == 2
                ? Align(
                    alignment: Alignment.centerRight,
                    child: DefaultButton(
                        onTap: () {
                          context.pushNamedAndRemoveUntil(Routes.topicsScreen,
                              predicate: (route) => false);
                        },
                        text: 'Continue'))
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
