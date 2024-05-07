import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/core/widgets/custom_button.dart';

import '../../data/models/launch_model.dart';

class RedditWidget extends StatelessWidget {
  final Reddit reddit;
  const RedditWidget({super.key, required this.reddit});

  @override
  Widget build(BuildContext context) {
    if (reddit.isAllParametersNull()) {
      return const SizedBox();
    } else {
      return Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reddit :-',
              style: TextStyles.titleMedium,
            ),
            5.verticalSpace,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  reddit.campaign != null
                      ? Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: CustomButton(
                              onTap: () {
                                context.pushNamed(Routes.webViewScreen,
                                    arguments: reddit.campaign);
                              },
                              text: 'Campaign'),
                        )
                      : const SizedBox(),
                  reddit.launch != null
                      ? Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: CustomButton(
                              onTap: () {
                                context.pushNamed(Routes.webViewScreen,
                                    arguments: reddit.launch);
                              },
                              text: 'Launch'),
                        )
                      : const SizedBox(),
                  reddit.media != null
                      ? Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: CustomButton(
                              onTap: () {
                                context.pushNamed(Routes.webViewScreen,
                                    arguments: reddit.media);
                              },
                              text: 'Media'),
                        )
                      : const SizedBox(),
                  reddit.recovery != null
                      ? Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: CustomButton(
                              onTap: () {
                                context.pushNamed(Routes.webViewScreen,
                                    arguments: reddit.recovery);
                              },
                              text: 'Recovery'),
                        )
                      : const SizedBox(),
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
