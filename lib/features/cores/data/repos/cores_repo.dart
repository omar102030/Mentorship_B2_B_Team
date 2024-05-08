import 'package:mentorship/features/cores/data/models/core_query_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class CoresRepo {
  final ApiService _apiService;
  CoresRepo(this._apiService);

  Future<ApiResult<CoresQueryModel>> getCores({required int pageNum}) async {
    try {
      final response = await _apiService.getCores({
        'query': {},
        'options': {
          'page': pageNum,
          'limit': 10,
          "populate": [
            {
              "path": "launches",
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
