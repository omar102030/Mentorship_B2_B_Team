import 'package:mentorship/features/dragons/data/models/dragon_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class DragonsRepo {
  final ApiService _apiService;

  DragonsRepo(this._apiService);

  Future<ApiResult<List<DragonModel>>> getDragons() async {
    try {
      final response = await _apiService.getDragons();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
