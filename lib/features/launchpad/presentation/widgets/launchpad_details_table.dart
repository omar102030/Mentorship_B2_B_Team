import 'package:flutter/material.dart';
import 'package:mentorship/features/launchpad/data/models/launchpad_model.dart';
import 'package:mentorship/features/launchpad/presentation/widgets/custom_table_row.dart';

class LaunchpadDetailsTable extends StatelessWidget {
  const LaunchpadDetailsTable({
    super.key,
    required this.launchpad,
  });

  final LaunchpadModel launchpad;

  @override
  Widget build(BuildContext context) {
    return Table(
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
    );
  }
}
