import 'package:json_annotation/json_annotation.dart';

part 'dragon_model.g.dart';

@JsonSerializable()
class DragonModel {
  final String name;
  final String type;
  final bool active;
  @JsonKey(name: 'crew_capacity')
  final int crewCapacity;
  final String id;
  final String description;
  @JsonKey(name: 'wikipedia')
  final String wikipediaLink;
  @JsonKey(name: 'orbit_duration_yr')
  final int orbitDurationInYears;
  @JsonKey(name: 'sidewall_angle_deg')
  final int sideWallAngleDegree;
  @JsonKey(name: 'dry_mass_kg')
  final int dryMassKg;
  final Dimention diameter;
  @JsonKey(name: 'height_w_trunk')
  final Dimention hight;
  final List<Thruster> thrusters;
  @JsonKey(name: 'first_flight')
  final String firstFlightDate;
  @JsonKey(name: 'flickr_images')
  final List<String> flickrImages;
  DragonModel({
    required this.name,
    required this.type,
    required this.active,
    required this.crewCapacity,
    required this.id,
    required this.description,
    required this.wikipediaLink,
    required this.orbitDurationInYears,
    required this.sideWallAngleDegree,
    required this.dryMassKg,
    required this.diameter,
    required this.hight,
    required this.thrusters,
    required this.firstFlightDate,
    required this.flickrImages,
  });

  factory DragonModel.fromJson(Map<String, dynamic> json) =>
      _$DragonModelFromJson(json);

  Map<String, dynamic> toJson() => _$DragonModelToJson(this);
}

@JsonSerializable()
class Dimention {
  final int meters;
  final int feet;
  Dimention({
    required this.meters,
    required this.feet,
  });

  factory Dimention.fromJson(Map<String, dynamic> json) =>
      _$DimentionFromJson(json);

  Map<String, dynamic> toJson() => _$DimentionToJson(this);
}

@JsonSerializable()
class Thruster {
  final String type;
  final int amount;
  final int pods;
  @JsonKey(name: 'fuel_1')
  final String fuel1;
  @JsonKey(name: 'fuel_2')
  final String fuel2;
  final int isp;
  final Thrust thrust;

  Thruster({
    required this.type,
    required this.amount,
    required this.pods,
    required this.fuel1,
    required this.fuel2,
    required this.isp,
    required this.thrust,
  });

  factory Thruster.fromJson(Map<String, dynamic> json) =>
      _$ThrusterFromJson(json);

  Map<String, dynamic> toJson() => _$ThrusterToJson(this);
}

@JsonSerializable()
class Thrust {
  final double kN;
  final int lbf;

  Thrust({
    required this.kN,
    required this.lbf,
  });

  factory Thrust.fromJson(Map<String, dynamic> json) => _$ThrustFromJson(json);

  Map<String, dynamic> toJson() => _$ThrustToJson(this);
}
