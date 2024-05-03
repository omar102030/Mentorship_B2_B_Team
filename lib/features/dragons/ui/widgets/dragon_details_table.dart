import 'package:flutter/material.dart';
import 'package:mentorship/features/dragons/data/models/dragon_model.dart';
import 'package:mentorship/features/launchpad/presentation/widgets/custom_table_row.dart';

class DragonDetailsTable extends StatelessWidget {
  const DragonDetailsTable({super.key, required this.dragonModel});

  final DragonModel dragonModel;

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        CustomTableRow(
          title: 'First Flight',
          value: dragonModel.firstFlightDate,
        ),
        CustomTableRow(
          title: 'Type',
          value: dragonModel.type,
        ),
        CustomTableRow(
          title: 'Active',
          value: dragonModel.active.toString(),
        ),
        CustomTableRow(
          title: 'Crew Capacity',
          value: dragonModel.crewCapacity.toString(),
        ),
        CustomTableRow(
          title: 'Orbit Duration',
          value: dragonModel.orbitDurationInYears.toString(),
        ),
      ],
    );
  }
}
