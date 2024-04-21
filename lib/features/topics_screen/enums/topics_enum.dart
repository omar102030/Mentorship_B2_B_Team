import 'package:flutter/material.dart';

import '../../dragons/ui/widgets/dragon_list_preview.dart';

enum TopicsEnum {
  ships,
  capsules,
  starLinks,
  launchPads,
  cores,
  dragons,
  crew,
  payloads;

  String get humanReadableName {
    switch (this) {
      case TopicsEnum.ships:
        return 'Ships';
      case TopicsEnum.capsules:
        return 'Capsules';
      case TopicsEnum.starLinks:
        return 'Star Links';
      case TopicsEnum.launchPads:
        return 'Launch Pads';
      case TopicsEnum.cores:
        return 'Cores';
      case TopicsEnum.dragons:
        return 'Dragons';
      case TopicsEnum.crew:
        return 'Crew';
      case TopicsEnum.payloads:
        return 'Payloads';
    }
  }

  Widget get getTopicDesignWidget {
    switch (this) {
      case TopicsEnum.ships:
        return const SizedBox();
      case TopicsEnum.capsules:
        return const SizedBox();
      case TopicsEnum.starLinks:
        return const SizedBox();
      case TopicsEnum.launchPads:
        return const SizedBox();
      case TopicsEnum.cores:
        return const SizedBox();
      case TopicsEnum.dragons:
        return const DragonsListPreviewWidget();
      case TopicsEnum.crew:
        return const SizedBox();
      case TopicsEnum.payloads:
        return const SizedBox();
    }
  }
}
