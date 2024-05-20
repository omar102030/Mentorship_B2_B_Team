import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/features/launches/ui/widgets/related_topic_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../core/theming/text_styles.dart';
import '../../data/models/launch_model.dart';

class RelatedTopicListWidget extends StatelessWidget {
  final List topicList;
  final YoutubePlayerController? youtubeController;
  const RelatedTopicListWidget(
      {super.key, required this.topicList, required this.youtubeController});

  @override
  Widget build(BuildContext context) {
    if (topicList.isNotEmpty && topicList[0] is RelatedTopicModel) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PayLoads :-',
            style: TextStyles.titleMedium,
          ),
          5.verticalSpace,
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => RelatedTopicWidget(
                  model: topicList[index],
                  onPressed: () {
                    youtubeController?.pause();
                    //! go to the payload details screen by the id
                  }),
              separatorBuilder: (context, index) => 10.verticalSpace,
              itemCount: topicList.length)
        ],
      );
    } else {
      return const SizedBox();
    }
  }
}
