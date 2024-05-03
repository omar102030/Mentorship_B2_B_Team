import 'package:bloc/bloc.dart';
import 'package:mentorship/features/company_info/logic/cubit/company_info_state.dart';

import '../../data/repos/company_info_repo.dart';

class CompanyInfoCubit extends Cubit<CompanyInfoState> {
  final CompanyInfoRepo _companyInfoRepo;
  CompanyInfoCubit(this._companyInfoRepo)
      : super(const CompanyInfoState.initial());

  void emitGetCompanyInfo() async {
    emit(const CompanyInfoState.loading());
    final response = await _companyInfoRepo.getCompanyInfo();
    response.when(success: (companyInfoResponse) {
      emit(CompanyInfoState.loaded(companyInfoResponse));
    }, failure: (error) {
      emit(CompanyInfoState.error(message: error.apiErrorModel.message ?? ''));
    });
  }
}
