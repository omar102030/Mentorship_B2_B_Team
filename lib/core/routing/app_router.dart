import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/core/di/get_it_setup.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/features/on_booarding/on_boarding_screen.dart';
import 'package:mentorship/features/rockets/ui/rocketsScreen.dart';
import 'package:mentorship/features/splash/splash_screen.dart';
import 'package:mentorship/features/topics_screen/enums/topics_enum.dart';
import 'package:mentorship/features/topics_screen/topics_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/launchpad/data/models/launchpad_model.dart';
import '../../features/launchpad/presentation/cubit/launchpad_cubit.dart';
import '../../features/launchpad/presentation/pages/launchpad_details_screen.dart';
import '../../features/launchpad/presentation/pages/launchpads_screen.dart';


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

        case Routes.launchpadDetailScreen:
        return MaterialPageRoute(
          builder: (_) =>  LaunchpadDetailsScreen(
            launchpad: arguments as LaunchpadModel,
          ),
        );
      case Routes.topicsScreen:
        return PageTransition(
            child: const TopicsScreen(), type: PageTransitionType.bottomToTop);
      case Routes.homeScreen:
        return PageTransition(
            child: HomeScreen(
              topics: arguments as List<TopicsEnum>,
            ),
            type: PageTransitionType.fade);
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