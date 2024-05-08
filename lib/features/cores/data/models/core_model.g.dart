// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Core _$CoreFromJson(Map<String, dynamic> json) => Core(
      block: (json['block'] as num?)?.toInt(),
      reuseCount: (json['reuse_count'] as num).toInt(),
      rtlsAttempts: (json['rtls_attempts'] as num).toInt(),
      rtlsLandings: (json['rtls_landings'] as num).toInt(),
      asdsAttempts: (json['asds_attempts'] as num).toInt(),
      asdsLandings: (json['asds_landings'] as num).toInt(),
      lastUpdate: json['last_update'] as String?,
      launches: (json['launches'] as List<dynamic>)
          .map((e) => RelatedTopicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      serial: json['serial'] as String,
      status: json['status'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$CoreToJson(Core instance) => <String, dynamic>{
      'block': instance.block,
      'reuse_count': instance.reuseCount,
      'rtls_attempts': instance.rtlsAttempts,
      'rtls_landings': instance.rtlsLandings,
      'asds_attempts': instance.asdsAttempts,
      'asds_landings': instance.asdsLandings,
      'last_update': instance.lastUpdate,
      'launches': instance.launches,
      'serial': instance.serial,
      'status': instance.status,
      'id': instance.id,
    };
