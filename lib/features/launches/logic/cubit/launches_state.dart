import 'package:freezed_annotation/freezed_annotation.dart';

part 'launches_state.freezed.dart';

@freezed
class LaunchesState<T> with _$LaunchesState<T> {
  const factory LaunchesState.initial() = _Initial;
  const factory LaunchesState.loading() = LaunchesLoading;
  const factory LaunchesState.loaded(T data) = LaunchesLoaded<T>;
  const factory LaunchesState.error({required String message}) = LaunchesError;
}
