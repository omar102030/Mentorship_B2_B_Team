import 'package:mentorship/features/dragons/data/models/dragon_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class DragonDetailsRepo {
  final ApiService _apiService;

  DragonDetailsRepo(this._apiService);

  Future<ApiResult<DragonModel>> getDragonDetails(String dragonId) async {
    try {
      final response = await _apiService.getDragonDetails(dragonId);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
