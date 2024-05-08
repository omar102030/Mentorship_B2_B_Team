import 'package:json_annotation/json_annotation.dart';
import 'package:mentorship/features/cores/data/models/core_model.dart';
part 'core_query_model.g.dart';

@JsonSerializable()
class CoresQueryModel {
  @JsonKey(name: 'docs')
  final List<Core> cores;
  final int? totalDocs;
  final int? offset;
  final int? totalPages;
  final int? pagingCounter;
  final int page;
  final bool hasPrevPage;
  final bool hasNextPage;
  final int? prevPage;
  final int? nextPage;
  CoresQueryModel({
    required this.cores,
    required this.totalDocs,
    required this.offset,
    required this.totalPages,
    required this.pagingCounter,
    required this.hasPrevPage,
    required this.hasNextPage,
    required this.prevPage,
    required this.nextPage,
    required this.page,
  });

  factory CoresQueryModel.fromJson(Map<String, dynamic> json) =>
      _$CoresQueryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CoresQueryModelToJson(this);
}
