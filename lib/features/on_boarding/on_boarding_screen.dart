import 'package:flutter/material.dart';
import 'package:mentorship/features/on_boarding/enums/on_boarding_screens_enum.dart';
import 'package:mentorship/features/on_boarding/widgets/on_boarding_screen_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<OnBoardingScreensEnum> screensContent = [
    OnBoardingScreensEnum.first,
    OnBoardingScreensEnum.second,
    OnBoardingScreensEnum.third,
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _controller,
        itemCount: screensContent.length,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, index) => OnBoardingScreenWidget(
              screenContent: screensContent[index],
            ));
  }
}
