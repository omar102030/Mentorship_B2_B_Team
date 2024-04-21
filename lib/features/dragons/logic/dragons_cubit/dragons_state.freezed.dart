// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dragons_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DragonsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DragonsLoading<T> value) loading,
    required TResult Function(DragonsLoaded<T> value) loaded,
    required TResult Function(DragonsError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DragonsLoading<T> value)? loading,
    TResult? Function(DragonsLoaded<T> value)? loaded,
    TResult? Function(DragonsError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DragonsLoading<T> value)? loading,
    TResult Function(DragonsLoaded<T> value)? loaded,
    TResult Function(DragonsError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DragonsStateCopyWith<T, $Res> {
  factory $DragonsStateCopyWith(
          DragonsState<T> value, $Res Function(DragonsState<T>) then) =
      _$DragonsStateCopyWithImpl<T, $Res, DragonsState<T>>;
}

/// @nodoc
class _$DragonsStateCopyWithImpl<T, $Res, $Val extends DragonsState<T>>
    implements $DragonsStateCopyWith<T, $Res> {
  _$DragonsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$DragonsStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DragonsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DragonsLoading<T> value) loading,
    required TResult Function(DragonsLoaded<T> value) loaded,
    required TResult Function(DragonsError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DragonsLoading<T> value)? loading,
    TResult? Function(DragonsLoaded<T> value)? loaded,
    TResult? Function(DragonsError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DragonsLoading<T> value)? loading,
    TResult Function(DragonsLoaded<T> value)? loaded,
    TResult Function(DragonsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements DragonsState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$DragonsLoadingImplCopyWith<T, $Res> {
  factory _$$DragonsLoadingImplCopyWith(_$DragonsLoadingImpl<T> value,
          $Res Function(_$DragonsLoadingImpl<T>) then) =
      __$$DragonsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DragonsLoadingImplCopyWithImpl<T, $Res>
    extends _$DragonsStateCopyWithImpl<T, $Res, _$DragonsLoadingImpl<T>>
    implements _$$DragonsLoadingImplCopyWith<T, $Res> {
  __$$DragonsLoadingImplCopyWithImpl(_$DragonsLoadingImpl<T> _value,
      $Res Function(_$DragonsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DragonsLoadingImpl<T> implements DragonsLoading<T> {
  const _$DragonsLoadingImpl();

  @override
  String toString() {
    return 'DragonsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DragonsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DragonsLoading<T> value) loading,
    required TResult Function(DragonsLoaded<T> value) loaded,
    required TResult Function(DragonsError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DragonsLoading<T> value)? loading,
    TResult? Function(DragonsLoaded<T> value)? loaded,
    TResult? Function(DragonsError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DragonsLoading<T> value)? loading,
    TResult Function(DragonsLoaded<T> value)? loaded,
    TResult Function(DragonsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DragonsLoading<T> implements DragonsState<T> {
  const factory DragonsLoading() = _$DragonsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DragonsLoadedImplCopyWith<T, $Res> {
  factory _$$DragonsLoadedImplCopyWith(_$DragonsLoadedImpl<T> value,
          $Res Function(_$DragonsLoadedImpl<T>) then) =
      __$$DragonsLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DragonsLoadedImplCopyWithImpl<T, $Res>
    extends _$DragonsStateCopyWithImpl<T, $Res, _$DragonsLoadedImpl<T>>
    implements _$$DragonsLoadedImplCopyWith<T, $Res> {
  __$$DragonsLoadedImplCopyWithImpl(_$DragonsLoadedImpl<T> _value,
      $Res Function(_$DragonsLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DragonsLoadedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DragonsLoadedImpl<T> implements DragonsLoaded<T> {
  const _$DragonsLoadedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DragonsState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DragonsLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DragonsLoadedImplCopyWith<T, _$DragonsLoadedImpl<T>> get copyWith =>
      __$$DragonsLoadedImplCopyWithImpl<T, _$DragonsLoadedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DragonsLoading<T> value) loading,
    required TResult Function(DragonsLoaded<T> value) loaded,
    required TResult Function(DragonsError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DragonsLoading<T> value)? loading,
    TResult? Function(DragonsLoaded<T> value)? loaded,
    TResult? Function(DragonsError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DragonsLoading<T> value)? loading,
    TResult Function(DragonsLoaded<T> value)? loaded,
    TResult Function(DragonsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DragonsLoaded<T> implements DragonsState<T> {
  const factory DragonsLoaded(final T data) = _$DragonsLoadedImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DragonsLoadedImplCopyWith<T, _$DragonsLoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DragonsErrorImplCopyWith<T, $Res> {
  factory _$$DragonsErrorImplCopyWith(_$DragonsErrorImpl<T> value,
          $Res Function(_$DragonsErrorImpl<T>) then) =
      __$$DragonsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DragonsErrorImplCopyWithImpl<T, $Res>
    extends _$DragonsStateCopyWithImpl<T, $Res, _$DragonsErrorImpl<T>>
    implements _$$DragonsErrorImplCopyWith<T, $Res> {
  __$$DragonsErrorImplCopyWithImpl(
      _$DragonsErrorImpl<T> _value, $Res Function(_$DragonsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DragonsErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DragonsErrorImpl<T> implements DragonsError<T> {
  const _$DragonsErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DragonsState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DragonsErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DragonsErrorImplCopyWith<T, _$DragonsErrorImpl<T>> get copyWith =>
      __$$DragonsErrorImplCopyWithImpl<T, _$DragonsErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DragonsLoading<T> value) loading,
    required TResult Function(DragonsLoaded<T> value) loaded,
    required TResult Function(DragonsError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DragonsLoading<T> value)? loading,
    TResult? Function(DragonsLoaded<T> value)? loaded,
    TResult? Function(DragonsError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DragonsLoading<T> value)? loading,
    TResult Function(DragonsLoaded<T> value)? loaded,
    TResult Function(DragonsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DragonsError<T> implements DragonsState<T> {
  const factory DragonsError({required final String message}) =
      _$DragonsErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$DragonsErrorImplCopyWith<T, _$DragonsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
