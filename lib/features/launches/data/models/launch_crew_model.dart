import 'package:json_annotation/json_annotation.dart';
part 'launch_crew_model.g.dart';

@JsonSerializable()
class LaunchCrewModel {
  final String name;
  final String image;
  final String id;
  LaunchCrewModel({
    required this.name,
    required this.id,
    required this.image,
  });

  factory LaunchCrewModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchCrewModelFromJson(json);
  Map<String, dynamic> toJson() => _$LaunchCrewModelToJson(this);
}
