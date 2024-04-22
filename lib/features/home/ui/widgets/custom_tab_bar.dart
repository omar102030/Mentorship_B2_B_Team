import 'package:flutter/material.dart';

import 'custom_tab_icon.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      indicatorColor: Colors.transparent,
      unselectedLabelColor: Colors.black,
      dividerColor: Colors.transparent,
      controller: tabController,
      labelPadding: const EdgeInsets.all(0),
      tabs: [
        CustomTabIcon(
          tabController: tabController,
          index: 0,
          label: 'Home',
          selectedIcon: const Icon(
            Icons.home,
          ),
          unselectedIcon: const Icon(
            Icons.home_outlined,
          ),
        ),
        CustomTabIcon(
          tabController: tabController,
          index: 1,
          label: 'Launchpad',
          selectedIcon: const Icon(
            Icons.assignment_returned,
          ),
          unselectedIcon: const Icon(
            Icons.assignment_returned_outlined,
          ),
        ),
        CustomTabIcon(
          tabController: tabController,
          index: 2,
          label: 'Rockets',
          selectedIcon: const Icon(
            Icons.rocket_launch_sharp,
          ),
          unselectedIcon: const Icon(
            Icons.rocket_launch_outlined,
          ),
        ),
        CustomTabIcon(
          tabController: tabController,
          index: 3,
          label: 'Favorite',
          selectedIcon: const Icon(
            Icons.favorite,
          ),
          unselectedIcon: const Icon(
            Icons.favorite_border,
          ),
        ),
      ],
    );
  }
}
