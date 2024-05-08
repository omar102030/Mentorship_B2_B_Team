// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoresQueryModel _$CoresQueryModelFromJson(Map<String, dynamic> json) =>
    CoresQueryModel(
      cores: (json['docs'] as List<dynamic>)
          .map((e) => Core.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalDocs: (json['totalDocs'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      pagingCounter: (json['pagingCounter'] as num?)?.toInt(),
      hasPrevPage: json['hasPrevPage'] as bool,
      hasNextPage: json['hasNextPage'] as bool,
      prevPage: (json['prevPage'] as num?)?.toInt(),
      nextPage: (json['nextPage'] as num?)?.toInt(),
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$CoresQueryModelToJson(CoresQueryModel instance) =>
    <String, dynamic>{
      'docs': instance.cores,
      'totalDocs': instance.totalDocs,
      'offset': instance.offset,
      'totalPages': instance.totalPages,
      'pagingCounter': instance.pagingCounter,
      'page': instance.page,
      'hasPrevPage': instance.hasPrevPage,
      'hasNextPage': instance.hasNextPage,
      'prevPage': instance.prevPage,
      'nextPage': instance.nextPage,
    };
