import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/features/dragons/data/repos/dragon_details_repo.dart';
import 'package:mentorship/features/dragons/logic/dragon_details_cubit/dragon_details_state.dart';

class DragonDetailsCubit extends Cubit<DragonDetailsState> {
  final DragonDetailsRepo _dragonDetailsRepo;
  DragonDetailsCubit(this._dragonDetailsRepo)
      : super(const DragonDetailsState.initial());

  void emitGetDragonDetails(String dragonId) async {
    emit(const DragonDetailsState.loading());
    final response = await _dragonDetailsRepo.getDragonDetails(dragonId);
    response.when(success: (dragonsResponse) {
      emit(DragonDetailsState.loaded(dragonsResponse));
    }, failure: (error) {
      emit(
          DragonDetailsState.error(message: error.apiErrorModel.message ?? ''));
    });
  }
}
