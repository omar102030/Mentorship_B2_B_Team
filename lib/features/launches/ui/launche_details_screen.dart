import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/launches/data/models/launch_model.dart';
import 'package:mentorship/features/launches/ui/widgets/launch_details_table.dart';
import 'package:mentorship/features/launches/ui/widgets/reddit_widget.dart';
import 'package:mentorship/features/launches/ui/widgets/related_topic_widget.dart';
import 'package:mentorship/features/launches/ui/widgets/youtube_iframe_widget.dart';

import 'widgets/articles_widget.dart';

class LauncheDetailsScreen extends StatelessWidget {
  final LaunchModel launchModel;
  const LauncheDetailsScreen({super.key, required this.launchModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(launchModel.name),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YoutubeVideoFrame(youtubeId: launchModel.links.youtubeId),
            Padding(
              padding: EdgeInsets.only(bottom: 15.h, right: 10.w, left: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  launchModel.details != null
                      ? Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Text(
                            launchModel.details!,
                            style: TextStyles.bodyMedium,
                          ),
                        )
                      : const SizedBox(),
                  ArticlesWidget(
                    article: launchModel.links.article,
                    presskit: launchModel.links.presskit,
                    wikipedia: launchModel.links.wikipedia,
                  ),
                  RedditWidget(reddit: launchModel.links.reddit),
                  LaunchDetailsTable(launchModel: launchModel),
                  5.verticalSpace,
                  Text(
                    'PayLoads :-',
                    style: TextStyles.titleMedium,
                  ),
                  5.verticalSpace,
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => RelatedTopicWidget(
                          model: launchModel.payloads[index],
                          onPressed: () {
                            //! go to the payload details screen by the id
                          }),
                      separatorBuilder: (context, index) => 10.verticalSpace,
                      itemCount: launchModel.payloads.length),
                  5.verticalSpace,
                  launchModel.ships.isNotEmpty
                      ? Text(
                          'Ships :-',
                          style: TextStyles.titleMedium,
                        )
                      : const SizedBox(),
                  5.verticalSpace,
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => RelatedTopicWidget(
                          model: launchModel.ships[index],
                          onPressed: () {
                            //! go to the ship details screen by the id
                          }),
                      separatorBuilder: (context, index) => 10.verticalSpace,
                      itemCount: launchModel.ships.length)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
