import 'package:bloc/bloc.dart';
import 'package:mentorship/features/cores/data/models/core_model.dart';
import 'package:mentorship/features/cores/data/models/core_query_model.dart';
import 'package:mentorship/features/cores/data/repos/cores_repo.dart';
import 'package:mentorship/features/cores/logic/cubit/cores_state.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';

class CoresCubit extends Cubit<CoresState> {
  final CoresRepo _coresRepo;
  CoresCubit(this._coresRepo) : super(const CoresState.initial());

  RefreshController refreshController = RefreshController();
  CoresQueryModel? coresQueryModel;
  List<Core> cores = [];
  void emitGetCoresState({required bool isPaginating}) async {
    if (coresQueryModel == null || coresQueryModel?.hasNextPage == true) {
      cores.isEmpty ? emit(const CoresState.loading()) : null;

      final response = await _coresRepo.getCores(
          pageNum: isPaginating ? coresQueryModel!.nextPage! : 1);

      response.when(success: (coresResponse) {
        coresQueryModel = coresResponse;
        cores.addAll(coresResponse.cores);
        emit(CoresState.loaded(coresResponse));
      }, failure: (error) {
        emit(CoresState.error(message: error.apiErrorModel.message ?? ''));
      });
    }
    refreshController.loadComplete();
  }
}
