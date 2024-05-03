import 'package:dio/dio.dart';
import 'package:mentorship/core/networking/api_constants.dart';
import 'package:mentorship/features/dragons/data/models/dragon_model.dart';
import 'package:mentorship/features/rockets/data/models/rockets_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/launchpad/data/models/launchpad_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.getRockets)
  Future<List<RocketsModel>> getRockets();
  @GET(ApiConstants.getLaunchpads)
  Future<List<LaunchpadModel>> getLaunchpads();
  @GET(ApiConstants.getDragons)
  Future<List<DragonModel>> getDragons();
  @GET(ApiConstants.getDragonDetails)
  Future<DragonModel> getDragonDetails();
}
