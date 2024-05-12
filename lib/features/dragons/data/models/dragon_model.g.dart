// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dragon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DragonModel _$DragonModelFromJson(Map<String, dynamic> json) => DragonModel(
      name: json['name'] as String,
      type: json['type'] as String,
      active: json['active'] as bool,
      crewCapacity: (json['crew_capacity'] as num).toInt(),
      id: json['id'] as String,
      description: json['description'] as String,
      wikipediaLink: json['wikipedia'] as String,
      orbitDurationInYears: (json['orbit_duration_yr'] as num).toInt(),
      sideWallAngleDegree: (json['sidewall_angle_deg'] as num).toInt(),
      dryMassKg: (json['dry_mass_kg'] as num).toInt(),
      diameter: Dimention.fromJson(json['diameter'] as Map<String, dynamic>),
      hight: Dimention.fromJson(json['height_w_trunk'] as Map<String, dynamic>),
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
      'sidewall_angle_deg': instance.sideWallAngleDegree,
      'dry_mass_kg': instance.dryMassKg,
      'diameter': instance.diameter,
      'height_w_trunk': instance.hight,
      'thrusters': instance.thrusters,
      'first_flight': instance.firstFlightDate,
      'flickr_images': instance.flickrImages,
    };

Dimention _$DimentionFromJson(Map<String, dynamic> json) => Dimention(
      meters: (json['meters'] as num).toInt(),
      feet: (json['feet'] as num).toInt(),
    );

Map<String, dynamic> _$DimentionToJson(Dimention instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Thruster _$ThrusterFromJson(Map<String, dynamic> json) => Thruster(
      type: json['type'] as String,
      amount: (json['amount'] as num).toInt(),
      pods: (json['pods'] as num).toInt(),
      fuel1: json['fuel_1'] as String,
      fuel2: json['fuel_2'] as String,
      isp: (json['isp'] as num).toInt(),
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
      lbf: (json['lbf'] as num).toInt(),
    );

Map<String, dynamic> _$ThrustToJson(Thrust instance) => <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };
