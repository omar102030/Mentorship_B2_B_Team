import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/core/widgets/custom_button.dart';
import 'package:mentorship/core/widgets/custom_row_info.dart';
import 'package:mentorship/features/cores/data/models/core_model.dart';

class CoreCardWidget extends StatelessWidget {
  final Core core;

  const CoreCardWidget({super.key, required this.core});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.blue[300],
      elevation: 3,
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.5,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomRowInfo(infoName: 'Serial', infoValue: core.serial),
              CustomRowInfo(infoName: 'Status', infoValue: core.status),
              CustomRowInfo(
                  infoName: 'Block',
                  infoValue:
                      core.block != null ? core.block.toString() : 'N/A'),
              CustomRowInfo(
                  infoName: 'Landings',
                  infoValue: core.asdsLandings.toString()),
              CustomButton(
                onTap: () {
                  context.pushNamed(Routes.coreDetailsScreen, arguments: core);
                },
                text: 'View Details',
                buttonColor: Colors.white,
                textStyle: TextStyles.bodySmall.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
