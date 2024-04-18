import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/core/helpers/get_it_setup.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/features/launchpad/presentation/pages/launchpads_screen.dart';
import 'package:mentorship/features/on_booarding/on_boarding_screen.dart';
import 'package:mentorship/features/splash_screen/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/launchpad/presentation/cubit/launchpad_cubit.dart';

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

      case Routes.launchpadScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                LaunchpadCubit(serviceLocator())..getLaunchpads(),
            child: const LaunchpadsScreen(),
          ),
        );
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