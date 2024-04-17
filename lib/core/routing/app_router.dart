import 'package:flutter/material.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/features/splash_screen/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/home/ui/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.homeScreen:
        return PageTransition(
            child: const HomeScreen(), type: PageTransitionType.rightToLeft);
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