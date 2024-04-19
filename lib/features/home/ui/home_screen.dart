import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:mentorship/core/helpers/get_it_setup.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/features/topics_screen/enums/topics_enum.dart';

import '../../../core/sharedWidgets/default_appbar.dart';
import '../../launchpad/data/repositories/launchpad_repo.dart';
import '../../launchpad/presentation/cubit/launchpad_cubit.dart';
import '../../launchpad/presentation/pages/launchpads_screen.dart';
import '../../rockets/ui/rocketsScreen.dart';
import 'widgets/custom_tab_bar.dart';

class HomeScreen extends StatefulWidget {
  final List<TopicsEnum> topics;
  const HomeScreen({super.key, required this.topics});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;
  late LaunchpadCubit _launchpadCubit;

  @override
  void initState() {
    super.initState();
    currentPage = 0;
    tabController = TabController(length: 4, vsync: this);
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    _launchpadCubit = LaunchpadCubit(
      serviceLocator<LaunchpadRepo>(),
    );
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    _launchpadCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.scaffoldColor,
        appBar: const DefaultAppBar(),
        body: BottomBar(
          barColor: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          body: (context, controller) => TabBarView(
            controller: tabController,
            dragStartBehavior: DragStartBehavior.down,
            physics: const BouncingScrollPhysics(),
            children: [
              //? Topics Screen
              Container(
                color: Colors.grey,
              ),
              //? Launchpads Screen
              BlocProvider.value(
                value: _launchpadCubit,
                child: const LaunchpadsScreen(),
              ),
              //? Rockets Screen
              const RocketsScreen(),
              //?fourth screen
              Container(
                color: Colors.grey,
              ),
            ],
          ),
          child: CustomTabBar(tabController: tabController),
        ));
  }
}
