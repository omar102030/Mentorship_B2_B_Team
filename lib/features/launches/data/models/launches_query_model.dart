import 'package:json_annotation/json_annotation.dart';

import 'package:mentorship/features/launches/data/models/launch_model.dart';
part 'launches_query_model.g.dart';

@JsonSerializable()
class LaunchesPaginatedModel {
  @JsonKey(name: 'docs')
  final List<LaunchModel> launches;
  final int? totalDocs;
  final int? offset;
  final int? totalPages;
  final int? pagingCounter;
  final int page;
  final bool hasPrevPage;
  final bool hasNextPage;
  final int? prevPage;
  final int? nextPage;
  LaunchesPaginatedModel({
    required this.launches,
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

  factory LaunchesPaginatedModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchesPaginatedModelFromJson(json);
  Map<String, dynamic> toJson() => _$LaunchesPaginatedModelToJson(this);
}
