import 'package:json_annotation/json_annotation.dart';

part 'launchpad_model.g.dart';

@JsonSerializable(

)
class LaunchpadModel {
  final String id;
  final String name;
  final String status;
  final String region;
  final String details;
  final double latitude;
  final double longitude;
  @JsonKey(
    name: 'full_name',
  )
  final String fullName;


// review the response to make more sense of the approach below
//https://api.spacexdata.com/v4/launchpads

  @JsonKey(
    name: 'images',
    required: false,
  )

  /// this is a map of images url with the key being the size of the image
  final Map<String, List<String>> imagesUrlMap;

  @JsonKey(
    required: false,
  )

  /// the url of first large image
  final String imageUrl;

  LaunchpadModel({
    required this.imagesUrlMap,
    required this.id,
    required this.name,
    required this.status,
    required this.region,
    required this.details,
    required this.latitude,
    required this.longitude,
    required this.fullName,

  }) : imageUrl = imagesUrlMap['large']?[0] ??
            "https://wallpapercave.com/wp/wp2284535.jpg";

  factory LaunchpadModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchpadModelFromJson(json);
}
