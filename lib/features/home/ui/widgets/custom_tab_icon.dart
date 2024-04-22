import 'package:flutter/material.dart';
import 'package:mentorship/features/home/ui/widgets/icon_border.dart';

class CustomTabIcon extends StatelessWidget {
  final String label;

  ///icon displayed when this tab is selected
  final Icon selectedIcon;

  ///icon displayed when this tab is not selected
  final Icon unselectedIcon;
  final TabController tabController;
  final int index;
  const CustomTabIcon({
    super.key,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.label,
    required this.tabController,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: (tabController.index == index)
          ? selectedIcon
          : iconBorder(
              unselectedIcon,
            ),
      child: (tabController.index == index)
          ? Text(
              label,
              softWrap: false,
              style: const TextStyle(
                fontSize: 12,
              ),
            )
          : null,
    );
  }
}
