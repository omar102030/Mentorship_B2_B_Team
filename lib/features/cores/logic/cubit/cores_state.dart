import 'package:freezed_annotation/freezed_annotation.dart';

part 'cores_state.freezed.dart';

@freezed
class CoresState<T> with _$CoresState<T> {
  const factory CoresState.initial() = _Initial;
  const factory CoresState.loading() = CoresLoading;
  const factory CoresState.loaded(T data) = CoresLoaded<T>;
  const factory CoresState.error({required String message}) = CoresError;
}
