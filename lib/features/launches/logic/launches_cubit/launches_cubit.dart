import 'package:bloc/bloc.dart';
import 'package:mentorship/features/launches/data/models/launches_query_model.dart';
import 'package:mentorship/features/launches/data/repos/launches_repo.dart';
import 'package:mentorship/features/launches/logic/launches_cubit/launches_state.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';

import '../../data/models/launch_model.dart';

class LaunchesCubit extends Cubit<LaunchesState> {
  final LaunchesRepo _launchesRepo;
  LaunchesCubit(this._launchesRepo) : super(const LaunchesState.initial());

  RefreshController refreshController = RefreshController();
  LaunchesPaginatedModel? launchesPaginatedModel;
  List<LaunchModel> launches = [];
  void emitGetLaunchesState({required bool isPaginating}) async {
    if (launchesPaginatedModel == null ||
        launchesPaginatedModel?.hasNextPage == true) {
      launches.isEmpty ? emit(const LaunchesState.loading()) : null;

      final response = await _launchesRepo.getLaunches(
          pageNum: isPaginating ? launchesPaginatedModel!.nextPage! : 1);

      response.when(success: (launchesResponse) {
        launchesPaginatedModel = launchesResponse;
        launches.addAll(launchesResponse.launches);
        emit(LaunchesState.loaded(launchesResponse));
      }, failure: (error) {
        emit(LaunchesState.error(message: error.apiErrorModel.message ?? ''));
      });
    }
    refreshController.loadComplete();
  }
}
