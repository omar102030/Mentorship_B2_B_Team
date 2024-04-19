import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/features/rockets/widgets/rockets_list_item.dart';

class RocketsList extends StatelessWidget {
  const RocketsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index)=>const RocketsListItem(),
        separatorBuilder: (context, index)=>16.ph,
        itemCount: 5);
  }
}
