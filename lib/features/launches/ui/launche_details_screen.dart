import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/launches/data/models/launch_model.dart';
import 'package:mentorship/features/launches/ui/widgets/launch_details_table.dart';
import 'package:mentorship/features/launches/ui/widgets/reddit_widget.dart';
import 'package:mentorship/features/launches/ui/widgets/related_topic_widget.dart';
import 'package:mentorship/features/launches/ui/widgets/youtube_iframe_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'widgets/articles_widget.dart';

class LauncheDetailsScreen extends StatefulWidget {
  final LaunchModel launchModel;
  const LauncheDetailsScreen({super.key, required this.launchModel});

  @override
  State<LauncheDetailsScreen> createState() => _LauncheDetailsScreenState();
}

class _LauncheDetailsScreenState extends State<LauncheDetailsScreen> {
  YoutubePlayerController? youtubeController;
  @override
  void initState() {
    super.initState();
    if (widget.launchModel.links.youtubeId != null) {
      youtubeController = YoutubePlayerController(
        initialVideoId: widget.launchModel.links.youtubeId!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
          hideControls: false,
          loop: false,
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    youtubeController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(widget.launchModel.name),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YoutubeVideoFrame(
              youtubeController: youtubeController,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.h, right: 10.w, left: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  widget.launchModel.details != null
                      ? Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Text(
                            widget.launchModel.details!,
                            style: TextStyles.bodyMedium,
                          ),
                        )
                      : const SizedBox(),
                  ArticlesWidget(
                    article: widget.launchModel.links.article,
                    presskit: widget.launchModel.links.presskit,
                    wikipedia: widget.launchModel.links.wikipedia,
                    youtubeController: youtubeController,
                  ),
                  RedditWidget(
                    reddit: widget.launchModel.links.reddit,
                    youtubeController: youtubeController,
                  ),
                  LaunchDetailsTable(launchModel: widget.launchModel),
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
                          model: widget.launchModel.payloads[index],
                          onPressed: () {
                            youtubeController?.pause();
                            //! go to the payload details screen by the id
                          }),
                      separatorBuilder: (context, index) => 10.verticalSpace,
                      itemCount: widget.launchModel.payloads.length),
                  5.verticalSpace,
                  widget.launchModel.ships.isNotEmpty
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
                          model: widget.launchModel.ships[index],
                          onPressed: () {
                            youtubeController?.pause();
                            //! go to the ship details screen by the id
                          }),
                      separatorBuilder: (context, index) => 10.verticalSpace,
                      itemCount: widget.launchModel.ships.length)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
