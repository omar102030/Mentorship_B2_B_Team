import 'package:flutter/material.dart';
import 'package:mentorship/features/home/ui/widgets/icon_border.dart';

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
      tabs: [
        Tab(
          icon: iconBorder(
            (tabController.index == 0)
                ? const Icon(
                    Icons.home,
                  )
                : const Icon(
                    Icons.home_outlined,
                  ),
          ),
        ),
        Tab(
          icon: iconBorder(
            (tabController.index == 1)
                ? const Icon(
                    Icons.assignment_returned,
                  )
                : const Icon(
                    Icons.assignment_returned_outlined,
                  ),
          ),
        ),
        Tab(
          icon: iconBorder(
            (tabController.index == 2)
                ? const Icon(
                    Icons.rocket_launch_sharp,
                  )
                : const Icon(Icons.rocket_launch_outlined),
          ),
        ),
        Tab(
          icon: iconBorder(
            (tabController.index == 3)
                ? const Icon(
                    Icons.favorite,
                  )
                : const Icon(Icons.favorite_border),
          ),
        ),
      ],
    );
  }
}
