import 'package:mentorship/features/company_info/data/models/company_info_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class CompanyInfoRepo {
  final ApiService _apiService;

  CompanyInfoRepo(this._apiService);

  Future<ApiResult<CompanyInfoModel>> getCompanyInfo() async {
    try {
      final response = await _apiService.getCompanyInfo();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
