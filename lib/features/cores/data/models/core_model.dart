import 'package:json_annotation/json_annotation.dart';
import 'package:mentorship/features/launches/data/models/launch_model.dart';

part 'core_model.g.dart';

@JsonSerializable()
class Core {
  @JsonKey(name: 'block')
  final int? block;
  @JsonKey(name: 'reuse_count')
  final int reuseCount;
  @JsonKey(name: 'rtls_attempts')
  final int rtlsAttempts;
  @JsonKey(name: 'rtls_landings')
  final int rtlsLandings;
  @JsonKey(name: 'asds_attempts')
  final int asdsAttempts;
  @JsonKey(name: 'asds_landings')
  final int asdsLandings;
  @JsonKey(name: 'last_update')
  final String? lastUpdate;
  final List<RelatedTopicModel> launches;
  final String serial;
  final String status;
  final String id;

  Core({
    this.block,
    required this.reuseCount,
    required this.rtlsAttempts,
    required this.rtlsLandings,
    required this.asdsAttempts,
    required this.asdsLandings,
    required this.lastUpdate,
    required this.launches,
    required this.serial,
    required this.status,
    required this.id,
  });

  factory Core.fromJson(Map<String, dynamic> json) => _$CoreFromJson(json);
  Map<String, dynamic> toJson() => _$CoreToJson(this);
}
