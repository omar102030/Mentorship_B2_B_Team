import 'package:mentorship/core/assets/app_assets.dart';

enum OnBoardingScreensEnum {
  first(
      title: 'Welcome to SpaceX',
      text:
          'Discover the world\'s leading private aerospace manufacturer and space transport services company.',
      image: AppImages.firstOnboardingImage,
      i: 0),
  seconed(
      title: 'Revolutionizing Space Travel',
      text:
          'Explore SpaceX\'s groundbreaking advancements in rocket technology.',
      image: AppImages.secondOnboardingImage,
      i: 1),
  third(
      title: 'Journey to Mars',
      text:
          'Join SpaceX\'s mission to colonize Mars and become a multiplanetary species.',
      image: AppImages.thirdOnboardingImage,
      i: 2),
  ;

  final String title;
  final String text;
  final String image;
  final int i;
  const OnBoardingScreensEnum({
    required this.title,
    required this.text,
    required this.i,
    required this.image,
  });
}
