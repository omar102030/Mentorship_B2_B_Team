import 'package:json_annotation/json_annotation.dart';

part 'rockets_model.g.dart';

@JsonSerializable()
class RocketsModel {
  final String id;
  final String name;
  final String type;

  RocketsModel({
    required this.id,
    required this.name,
    required this.type,
  });

  factory RocketsModel.fromJson(Map<String, dynamic> json) =>
      _$RocketsModelFromJson(json);

  Map<String, dynamic> toJson() => _$RocketsModelToJson(this);
}
