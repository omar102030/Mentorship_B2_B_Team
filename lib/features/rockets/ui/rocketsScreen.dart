import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/sharedWidgets/default_appbar.dart';
import 'package:mentorship/core/sharedWidgets/default_search_bar.dart';
import 'package:mentorship/features/rockets/widgets/rockets_list.dart';

class RocketsScreen extends StatelessWidget {
  const RocketsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const DefaultAppBar(),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 78.h, left: 16.w, right: 16.w, bottom: 16.h),
            child: const RocketsList(),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: DefaultSearchBar(),
          ),
        ],
      ),
    );
  }
}
