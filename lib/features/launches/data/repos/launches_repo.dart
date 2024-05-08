import 'package:mentorship/core/networking/api_error_handler.dart';
import 'package:mentorship/core/networking/api_service.dart';
import 'package:mentorship/features/launches/data/models/launches_query_model.dart';
import '../../../../core/networking/api_result.dart';

class LaunchesRepo {
  final ApiService _apiService;
  LaunchesRepo(this._apiService);

  Future<ApiResult<LaunchesPaginatedModel>> getLaunches(
      {required int pageNum}) async {
    try {
      final response = await _apiService.getLaunches({
        'query': {},
        'options': {
          'page': pageNum,
          'limit': 10,
          "populate": [
            {
              "path": "ships",
              "select": {"name": 1}
            },
            {
              "path": "payloads",
              "select": {"name": 1}
            },
          ]
        }
      });
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
