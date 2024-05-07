import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mentorship/features/launches/data/models/launch_model.dart';
import 'package:mentorship/features/launchpad/presentation/widgets/custom_table_row.dart';

class LaunchDetailsTable extends StatelessWidget {
  const LaunchDetailsTable({super.key, required this.launchModel});

  final LaunchModel launchModel;

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        CustomTableRow(
          title: 'Date UTC',
          value:
              DateFormat('yMMMMd').format(DateTime.parse(launchModel.dateUtc)),
        ),
        CustomTableRow(
          title: 'Date Precision',
          value: launchModel.datePrecision,
        ),
        CustomTableRow(
          title: 'Net',
          value: launchModel.net == null ? 'N/A' : launchModel.net.toString(),
        ),
        CustomTableRow(
          title: 'Window',
          value: launchModel.window.toString(),
        ),
        CustomTableRow(
          title: 'Success',
          value: launchModel.success == null
              ? 'N/A'
              : launchModel.success.toString(),
        ),
        CustomTableRow(
          title: 'Flight Number',
          value: launchModel.flightNumber == null
              ? 'N/A'
              : launchModel.flightNumber.toString(),
        ),
        CustomTableRow(
          title: 'Auto Update',
          value: launchModel.autoUpdate == null
              ? 'N/A'
              : launchModel.autoUpdate.toString(),
        ),
      ],
    );
  }
}
