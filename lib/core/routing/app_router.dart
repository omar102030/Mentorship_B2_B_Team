import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/core/di/get_it_setup.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/features/cores/data/models/core_model.dart';
import 'package:mentorship/features/cores/ui/cores_screen.dart';
import 'package:mentorship/features/dragons/data/models/dragon_model.dart';
import 'package:mentorship/features/dragons/ui/dragons_screen.dart';
import 'package:mentorship/features/launches/data/models/launch_model.dart';
import 'package:mentorship/features/launches/ui/launch_details_from_id.dart';
import 'package:mentorship/features/launches/ui/launche_details_screen.dart';
import 'package:mentorship/features/rockets/ui/rocketsScreen.dart';
import 'package:mentorship/features/splash_screen/splash_screen.dart';
import 'package:mentorship/features/topics_screen/enums/topics_enum.dart';
import 'package:mentorship/features/topics_screen/topics_screen.dart';
import 'package:mentorship/features/web_screen/web_view_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/cores/ui/core_details_screen.dart';
import '../../features/dragons/ui/dragon_details_from_id.dart';
import '../../features/dragons/ui/dragon_details_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/launchpad/data/models/launchpad_model.dart';
import '../../features/launchpad/presentation/cubit/launchpad_cubit.dart';
import '../../features/launchpad/presentation/pages/launchpad_details_screen.dart';
import '../../features/launchpad/presentation/pages/launchpads_screen.dart';
import '../../features/on_boarding/on_boarding_screen.dart';

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
            create: (context) => LaunchpadCubit(getIt())..getLaunchpads(),
            child: const LaunchpadsScreen(),
          ),
        );

      case Routes.launchpadDetailScreen:
        return MaterialPageRoute(
          builder: (_) => LaunchpadDetailsScreen(
            launchpad: arguments as LaunchpadModel,
          ),
        );
      case Routes.launchDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => LauncheDetailsScreen(
            launchModel: arguments as LaunchModel,
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
      case Routes.dragonsScreen:
        return MaterialPageRoute(
            builder: (_) => DragonsScreen(
                  dragonList: arguments as List<DragonModel>,
                ));
      case Routes.coresScreen:
        return MaterialPageRoute(builder: (_) => const CoresScreen());
      case Routes.dragonDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => DragonDetailsScreen(
                  model: arguments as DragonModel,
                ));
      case Routes.dragonDetailsFromIdScreen:
        return MaterialPageRoute(
            builder: (_) => DragonDetailsFromIdScreen(
                  dragonId: arguments as String,
                ));
      case Routes.rocketsScreen:
        return MaterialPageRoute(builder: (_) => const RocketsScreen());
      case Routes.webViewScreen:
        return MaterialPageRoute(
            builder: (_) => WebViewScreen(
                  url: arguments as String,
                ));
      case Routes.coreDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => CoreDetailsScreen(
                  core: arguments as Core,
                ));
      case Routes.launchDetailsFromId:
        return MaterialPageRoute(
            builder: (_) => LaunchDetailsFromId(
                  launchId: arguments as String,
                ));
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