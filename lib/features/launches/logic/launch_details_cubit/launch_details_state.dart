import 'package:freezed_annotation/freezed_annotation.dart';
part 'launch_details_state.freezed.dart';

@freezed
class LaunchDetailsState<LaunchModel> with _$LaunchDetailsState<LaunchModel> {
  const factory LaunchDetailsState.initial() = _Initial;
  const factory LaunchDetailsState.loading() = LaunchDetailsLoading;
  const factory LaunchDetailsState.loaded(LaunchModel data) =
      LaunchDetailsLoaded<LaunchModel>;
  const factory LaunchDetailsState.error({required String message}) =
      LaunchDetailsError;
}
