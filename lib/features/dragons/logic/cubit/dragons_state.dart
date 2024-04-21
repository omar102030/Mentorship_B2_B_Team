import 'package:freezed_annotation/freezed_annotation.dart';

part 'dragons_state.freezed.dart';

@freezed
class DragonsState<T> with _$DragonsState<T> {
  const factory DragonsState.initial() = _Initial;
  const factory DragonsState.loading() = DragonsLoading;
  const factory DragonsState.loaded(T data) = DragonsLoaded<T>;
  const factory DragonsState.error({required String message}) = DragonsError;
}
