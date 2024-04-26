import 'package:flutter/material.dart';

class DragonDetailsScreen extends StatelessWidget {
  final String dragonId;
  const DragonDetailsScreen({super.key, required this.dragonId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dragon Details'),
      ),
    );
  }
}
