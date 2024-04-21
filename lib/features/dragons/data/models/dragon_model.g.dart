// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dragon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DragonModel _$DragonModelFromJson(Map<String, dynamic> json) => DragonModel(
      name: json['name'] as String,
      type: json['type'] as String,
      active: json['active'] as bool,
      crewCapacity: json['crew_capacity'] as int,
      id: json['id'] as String,
      description: json['description'] as String,
      wikipediaLink: json['wikipedia'] as String,
      orbitDurationInYears: json['orbit_duration_yr'] as int,
      thrusters: (json['thrusters'] as List<dynamic>)
          .map((e) => Thruster.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstFlightDate: json['first_flight'] as String,
      flickrImages: (json['flickr_images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DragonModelToJson(DragonModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'crew_capacity': instance.crewCapacity,
      'id': instance.id,
      'description': instance.description,
      'wikipedia': instance.wikipediaLink,
      'orbit_duration_yr': instance.orbitDurationInYears,
      'thrusters': instance.thrusters,
      'first_flight': instance.firstFlightDate,
      'flickr_images': instance.flickrImages,
    };

Thruster _$ThrusterFromJson(Map<String, dynamic> json) => Thruster(
      type: json['type'] as String,
      amount: json['amount'] as int,
      pods: json['pods'] as int,
      fuel1: json['fuel_1'] as String,
      fuel2: json['fuel_2'] as String,
      isp: json['isp'] as int,
      thrust: Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThrusterToJson(Thruster instance) => <String, dynamic>{
      'type': instance.type,
      'amount': instance.amount,
      'pods': instance.pods,
      'fuel_1': instance.fuel1,
      'fuel_2': instance.fuel2,
      'isp': instance.isp,
      'thrust': instance.thrust,
    };

Thrust _$ThrustFromJson(Map<String, dynamic> json) => Thrust(
      kN: (json['kN'] as num).toDouble(),
      lbf: json['lbf'] as int,
    );

Map<String, dynamic> _$ThrustToJson(Thrust instance) => <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };
