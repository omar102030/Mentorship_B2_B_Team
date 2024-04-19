import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/sharedWidgets/default_button.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/topics_screen/enums/topics_enum.dart';
import 'package:mentorship/features/topics_screen/widget/topic_widget.dart';

class TopicsScreen extends StatefulWidget {
  const TopicsScreen({super.key});

  @override
  State<TopicsScreen> createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {
  List<TopicsEnum> topics = [
    TopicsEnum.missions,
    TopicsEnum.ships,
    TopicsEnum.capsules,
    TopicsEnum.starLinks,
    TopicsEnum.launchPads,
    TopicsEnum.cores,
    TopicsEnum.dragons,
    TopicsEnum.crew,
    TopicsEnum.payloads,
  ];
  List<TopicsEnum> choosedTopics = [];

  void pickTopic(TopicsEnum topicName) {
    choosedTopics.contains(topicName)
        ? choosedTopics.remove(topicName)
        : choosedTopics.add(topicName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              'Help Us',
              style: TextStyles.bodyMedium,
            ),
            10.ph,
            Text(
              'Personalize your content',
              style: TextStyles.titleLarge,
            ),
            10.ph,
            Text(
              'Pick all the topics that interest you and your “Today” page will show the content you want to see',
              style: TextStyles.bodyMedium,
            ),
            25.ph,
            Wrap(
              spacing: 10.w,
              runSpacing: 10.h,
              children: topics
                  .mapIndexed((e, i) => TopicWidget(
                        topic: topics[i],
                        isPicked: choosedTopics.contains(topics[i]),
                        onTap: () {
                          setState(() {
                            pickTopic(topics[i]);
                          });
                        },
                      ))
                  .toList(),
            ),
            const Spacer(),
            Align(
                alignment: Alignment.bottomRight,
                child: DefaultButton(
                    onTap: () {
                      context.pushReplacementNamed(Routes.homeScreen,
                          arguments: choosedTopics);
                    },
                    text: 'Done')),
            50.ph
          ],
        ),
      ),
    );
  }
}
