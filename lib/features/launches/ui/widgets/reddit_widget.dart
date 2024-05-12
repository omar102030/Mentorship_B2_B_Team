import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/core/widgets/custom_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../data/models/launch_model.dart';

class RedditWidget extends StatelessWidget {
  final Reddit reddit;
  final YoutubePlayerController? youtubeController;
  const RedditWidget(
      {super.key, required this.reddit, required this.youtubeController});

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
                                youtubeController?.pause();
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
                                youtubeController?.pause();
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
                                youtubeController?.pause();
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
                                youtubeController?.pause();
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
