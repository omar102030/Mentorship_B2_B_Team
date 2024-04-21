import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/features/dragons/data/repos/dargons_repo.dart';
import 'package:mentorship/features/dragons/logic/cubit/dragons_state.dart';

class DragonsCubit extends Cubit<DragonsState> {
  final DragonsRepo _dragonsRepo;
  DragonsCubit(this._dragonsRepo) : super(const DragonsState.initial());

  void emitGetDragons() async {
    emit(const DragonsState.loading());
    final response = await _dragonsRepo.getDragons();
    response.when(success: (dragonsResponse) {
      emit(DragonsState.loaded(dragonsResponse));
    }, failure: (error) {
      emit(DragonsState.error(message: error.apiErrorModel.message ?? ''));
    });
  }
}
