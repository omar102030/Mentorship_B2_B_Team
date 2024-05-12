// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_crew_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchCrewModel _$LaunchCrewModelFromJson(Map<String, dynamic> json) =>
    LaunchCrewModel(
      name: json['name'] as String,
      id: json['id'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$LaunchCrewModelToJson(LaunchCrewModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
    };
