import 'package:freezed_annotation/freezed_annotation.dart';

part 'launchpad_state.freezed.dart';

@freezed
 abstract class LaunchpadState<T>  with _$LaunchpadState<T>{

  const factory LaunchpadState.initial() = LaunchpadInitial;
  const factory LaunchpadState.loading() = LaunchpadLoading;
  const factory LaunchpadState.loaded(T data) = LaunchpadLoaded<T>;
  const factory LaunchpadState.error(String message) = LaunchpadError;
}

