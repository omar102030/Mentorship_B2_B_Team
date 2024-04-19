import 'package:flutter/material.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/topics_screen/enums/topics_enum.dart';

class HomeScreen extends StatelessWidget {
  final List<TopicsEnum> topics;
  const HomeScreen({super.key, required this.topics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.scaffoldColor,
      appBar: AppBar(
        backgroundColor: ColorsManager.scaffoldColor,
        title: Text(
          'Home Screen',
          style: TextStyles.titleLarge,
        ),
      ),
    );
  }
}
