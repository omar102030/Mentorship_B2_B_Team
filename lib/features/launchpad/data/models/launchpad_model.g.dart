// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launchpad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchpadModel _$LaunchpadModelFromJson(Map<String, dynamic> json) =>
    LaunchpadModel(
      imagesUrlMap: (json['images'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      region: json['region'] as String,
      details: json['details'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$LaunchpadModelToJson(LaunchpadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'region': instance.region,
      'details': instance.details,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'full_name': instance.fullName,
      'images': instance.imagesUrlMap,
    };
