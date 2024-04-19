enum TopicsEnum {
  missions,
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
      case TopicsEnum.missions:
        return 'Missions';
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
}
