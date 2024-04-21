import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/features/dragons/logic/dragon_details_cubit/dragon_details_state.dart';

class DragonDetailsCubit extends Cubit<DragonDetailsState> {
  DragonDetailsCubit() : super(const DragonDetailsState.initial());
}
