import 'package:flutter/material.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/features/on_booarding/on_boarding_screen.dart';
import 'package:mentorship/features/rockets/ui/rocketsScreen.dart';
import 'package:mentorship/features/splash_screen/splash_screen.dart';
import 'package:page_transition/page_transition.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return PageTransition(
            child: const OnBoardingScreen(),
            type: PageTransitionType.rightToLeft);
      case Routes.rocketsScreen:
        return MaterialPageRoute(builder: (_) => const RocketsScreen());

    }
    return null;
  }
}


      //? basic approach
      //? case Routes.homeScreen:
      //?   return MaterialPageRoute(builder: (_) => const HomeScreen());

      //? with page transition package approach
      //? case Routes.homeScreen:
      //?   return PageTransition(child: HomeScreen(), type: PageTransitionType.fade);