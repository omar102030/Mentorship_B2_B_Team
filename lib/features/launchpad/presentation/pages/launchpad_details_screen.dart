import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/theming/text_styles.dart';

import '../../data/models/launchpad_model.dart';
import '../widgets/custom_table_row.dart';

class LaunchpadDetailsScreen extends StatelessWidget {
  final LaunchpadModel launchpad;

  const LaunchpadDetailsScreen({super.key, required this.launchpad});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      launchpad.imageUrl,
                      height: 270.h,
                      width: 328.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      launchpad.name,
                      style: TextStyles.titleLarge,
                    ),
                  ),
                ],
              ),
              16.ph,
              Text(
                '    ${launchpad.details}',
                style: TextStyles.bodyMedium,
              ),
              16.ph,
              Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  CustomTableRow(
                    title: 'Region',
                    value: launchpad.region,
                  ),
                  CustomTableRow(
                    title: 'Status',
                    value: launchpad.status,
                  ),
                  CustomTableRow(
                    title: 'Full name',
                    value: launchpad.fullName,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
