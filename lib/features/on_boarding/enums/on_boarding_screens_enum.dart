enum OnBoardingScreensEnum {
  first(
      title: 'Welcome to SpaceX',
      text:
          'Discover the world\'s leading private aerospace manufacturer and space transport services company.',
      image: 'first_onboarding_image',
      i: 0),
  seconed(
      title: 'Revolutionizing Space Travel',
      text:
          'Explore SpaceX\'s groundbreaking advancements in rocket technology.',
      image: 'seconed_onboarding_image',
      i: 1),
  third(
      title: 'Journey to Mars',
      text:
          'Join SpaceX\'s mission to colonize Mars and become a multiplanetary species.',
      image: 'third_onboarding_image',
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
