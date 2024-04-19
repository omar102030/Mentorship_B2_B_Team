import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/launchpad_model.dart';

class LaunchpadRepo {
  final ApiService apiService;

  LaunchpadRepo(this.apiService);

  Future<ApiResult<List<LaunchpadModel>>> getLaunchpads() async {
    try{
      final launchpads = await apiService.getLaunchpads();
      return ApiResult.success( launchpads);
    } catch(error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
