import 'package:freezed_annotation/freezed_annotation.dart';
part 'dragon_details_state.freezed.dart';

@freezed
class DragonDetailsState<DragonModel> with _$DragonDetailsState<DragonModel> {
  const factory DragonDetailsState.initial() = _Initial;
  const factory DragonDetailsState.loading() = DragonDetailsLoading;
  const factory DragonDetailsState.loaded(DragonModel data) =
      DragonDetailsLoaded<DragonModel>;
  const factory DragonDetailsState.error({required String message}) =
      DragonDetailsError;
}
