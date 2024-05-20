import 'package:json_annotation/json_annotation.dart';
import 'package:mentorship/features/launches/data/models/launch_crew_model.dart';

class LaunchCrewConverter implements JsonConverter<dynamic, dynamic> {
  const LaunchCrewConverter();
  @override
  dynamic fromJson(dynamic json) {
    if (json.isNotEmpty && json[0] is String) {
      return List<String>.from(json);
    } else {
      return json.map((e) => LaunchCrewModel.fromJson(e)).toList();
    }
  }

  @override
  toJson(object) {
    return object;
  }
}
