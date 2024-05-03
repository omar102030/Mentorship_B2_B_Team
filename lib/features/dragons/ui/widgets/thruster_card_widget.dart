import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/features/dragons/data/models/dragon_model.dart';
import 'package:mentorship/core/sharedWidgets/custom_row_info.dart';

class ThrusterCard extends StatelessWidget {
  final Thruster thruster;
  const ThrusterCard({super.key, required this.thruster});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          children: [
            CustomRowInfo(infoName: 'Fuel 1 :', infoValue: thruster.fuel1),
            5.emptyHight,
            CustomRowInfo(infoName: 'Fuel 2 :', infoValue: thruster.fuel2),
            5.emptyHight,
            CustomRowInfo(infoName: 'Type :', infoValue: thruster.type),
            5.emptyHight,
            CustomRowInfo(
                infoName: 'Amount :', infoValue: thruster.amount.toString()),
            5.emptyHight,
            CustomRowInfo(
                infoName: 'ISP :', infoValue: thruster.isp.toString()),
            5.emptyHight,
            CustomRowInfo(
                infoName: 'Pods :', infoValue: thruster.pods.toString()),
            5.emptyHight,
            CustomRowInfo(
                infoName: 'Thrust :',
                infoValue:
                    '${thruster.thrust.kN} KN -- ${thruster.thrust.lbf} LBF'),
          ],
        ),
      ),
    );
  }
}
