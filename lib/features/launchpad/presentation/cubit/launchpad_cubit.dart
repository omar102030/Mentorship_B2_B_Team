import 'package:bloc/bloc.dart';

import '../../data/models/launchpad_model.dart';
import '../../data/repositories/launchpad_repo.dart';
import 'launchpad_state.dart';



class LaunchpadCubit extends Cubit<LaunchpadState<List<LaunchpadModel>>> {
  final LaunchpadRepo _launchpadRepo;
  LaunchpadCubit(this._launchpadRepo) : super(LaunchpadInitial());


void getLaunchpads() async {
    emit(const LaunchpadLoading());
    final result = await _launchpadRepo.getLaunchpads();
    result.when(
      success: (data) {
        emit(LaunchpadLoaded(data));
      },
      failure: (error) {
        emit(LaunchpadError(error.apiErrorModel.message ?? ''));
      },
    );
  }





}
