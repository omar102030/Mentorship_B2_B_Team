import 'package:bloc/bloc.dart';
import 'package:mentorship/features/launches/data/repos/launches_repo.dart';
import 'package:mentorship/features/launches/logic/launch_details_cubit/launch_details_state.dart';

class LaunchDetailsCubit extends Cubit<LaunchDetailsState> {
  final LaunchesRepo _launchesRepo;
  LaunchDetailsCubit(this._launchesRepo)
      : super(const LaunchDetailsState.initial());

  void emitGetLauncheDetails(String launchId) async {
    emit(const LaunchDetailsState.loading());
    final response = await _launchesRepo.getLaunchDetails(launchId);
    response.when(success: (launcheDetailsResponse) {
      emit(LaunchDetailsState.loaded(launcheDetailsResponse));
    }, failure: (error) {
      emit(
          LaunchDetailsState.error(message: error.apiErrorModel.message ?? ''));
    });
  }
}
