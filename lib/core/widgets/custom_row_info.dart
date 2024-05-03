import 'package:flutter/material.dart';

import '../theming/text_styles.dart';

class CustomRowInfo extends StatelessWidget {
  final String infoName;
  final String infoValue;
  const CustomRowInfo(
      {super.key, required this.infoName, required this.infoValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          infoName,
          style: TextStyles.titleSmall.copyWith(color: Colors.black),
        ),
        Text(
          infoValue,
          style: TextStyles.bodyMedium.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
