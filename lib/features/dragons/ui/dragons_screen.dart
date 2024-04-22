import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/features/dragons/ui/widgets/dragon_card_widget.dart';

import '../data/models/dragon_model.dart';

class DragonsScreen extends StatelessWidget {
  final List<DragonModel> dragonList;
  const DragonsScreen({super.key, required this.dragonList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text('Dragons'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: ListView.separated(
            itemBuilder: (context, index) => DragonCardWidget(
                  dragonModel: dragonList[index],
                  hight: 350.h,
                  width: double.infinity,
                ),
            separatorBuilder: (context, index) => 20.emptyHight,
            itemCount: dragonList.length),
      ),
    );
  }
}
