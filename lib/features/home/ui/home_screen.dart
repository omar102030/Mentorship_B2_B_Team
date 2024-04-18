import 'package:flutter/material.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/core/theming/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.scaffoldColor,
      appBar: AppBar(
        backgroundColor: ColorsManager.scaffoldColor,
        title:  Text('Home Screen', style: TextStyles.titleLarge,),
      ),
    );
  }
}
