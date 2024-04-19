// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launchpad_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LaunchpadState<T> {
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
    required TResult Function(LaunchpadInitial<T> value) initial,
    required TResult Function(LaunchpadLoading<T> value) loading,
    required TResult Function(LaunchpadLoaded<T> value) loaded,
    required TResult Function(LaunchpadError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchpadInitial<T> value)? initial,
    TResult? Function(LaunchpadLoading<T> value)? loading,
    TResult? Function(LaunchpadLoaded<T> value)? loaded,
    TResult? Function(LaunchpadError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchpadInitial<T> value)? initial,
    TResult Function(LaunchpadLoading<T> value)? loading,
    TResult Function(LaunchpadLoaded<T> value)? loaded,
    TResult Function(LaunchpadError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchpadStateCopyWith<T, $Res> {
  factory $LaunchpadStateCopyWith(
          LaunchpadState<T> value, $Res Function(LaunchpadState<T>) then) =
      _$LaunchpadStateCopyWithImpl<T, $Res, LaunchpadState<T>>;
}

/// @nodoc
class _$LaunchpadStateCopyWithImpl<T, $Res, $Val extends LaunchpadState<T>>
    implements $LaunchpadStateCopyWith<T, $Res> {
  _$LaunchpadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LaunchpadInitialImplCopyWith<T, $Res> {
  factory _$$LaunchpadInitialImplCopyWith(_$LaunchpadInitialImpl<T> value,
          $Res Function(_$LaunchpadInitialImpl<T>) then) =
      __$$LaunchpadInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LaunchpadInitialImplCopyWithImpl<T, $Res>
    extends _$LaunchpadStateCopyWithImpl<T, $Res, _$LaunchpadInitialImpl<T>>
    implements _$$LaunchpadInitialImplCopyWith<T, $Res> {
  __$$LaunchpadInitialImplCopyWithImpl(_$LaunchpadInitialImpl<T> _value,
      $Res Function(_$LaunchpadInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LaunchpadInitialImpl<T> implements LaunchpadInitial<T> {
  const _$LaunchpadInitialImpl();

  @override
  String toString() {
    return 'LaunchpadState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchpadInitialImpl<T>);
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
    required TResult Function(LaunchpadInitial<T> value) initial,
    required TResult Function(LaunchpadLoading<T> value) loading,
    required TResult Function(LaunchpadLoaded<T> value) loaded,
    required TResult Function(LaunchpadError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchpadInitial<T> value)? initial,
    TResult? Function(LaunchpadLoading<T> value)? loading,
    TResult? Function(LaunchpadLoaded<T> value)? loaded,
    TResult? Function(LaunchpadError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchpadInitial<T> value)? initial,
    TResult Function(LaunchpadLoading<T> value)? loading,
    TResult Function(LaunchpadLoaded<T> value)? loaded,
    TResult Function(LaunchpadError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LaunchpadInitial<T> implements LaunchpadState<T> {
  const factory LaunchpadInitial() = _$LaunchpadInitialImpl<T>;
}

/// @nodoc
abstract class _$$LaunchpadLoadingImplCopyWith<T, $Res> {
  factory _$$LaunchpadLoadingImplCopyWith(_$LaunchpadLoadingImpl<T> value,
          $Res Function(_$LaunchpadLoadingImpl<T>) then) =
      __$$LaunchpadLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LaunchpadLoadingImplCopyWithImpl<T, $Res>
    extends _$LaunchpadStateCopyWithImpl<T, $Res, _$LaunchpadLoadingImpl<T>>
    implements _$$LaunchpadLoadingImplCopyWith<T, $Res> {
  __$$LaunchpadLoadingImplCopyWithImpl(_$LaunchpadLoadingImpl<T> _value,
      $Res Function(_$LaunchpadLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LaunchpadLoadingImpl<T> implements LaunchpadLoading<T> {
  const _$LaunchpadLoadingImpl();

  @override
  String toString() {
    return 'LaunchpadState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchpadLoadingImpl<T>);
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
    required TResult Function(LaunchpadInitial<T> value) initial,
    required TResult Function(LaunchpadLoading<T> value) loading,
    required TResult Function(LaunchpadLoaded<T> value) loaded,
    required TResult Function(LaunchpadError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchpadInitial<T> value)? initial,
    TResult? Function(LaunchpadLoading<T> value)? loading,
    TResult? Function(LaunchpadLoaded<T> value)? loaded,
    TResult? Function(LaunchpadError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchpadInitial<T> value)? initial,
    TResult Function(LaunchpadLoading<T> value)? loading,
    TResult Function(LaunchpadLoaded<T> value)? loaded,
    TResult Function(LaunchpadError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LaunchpadLoading<T> implements LaunchpadState<T> {
  const factory LaunchpadLoading() = _$LaunchpadLoadingImpl<T>;
}

/// @nodoc
abstract class _$$LaunchpadLoadedImplCopyWith<T, $Res> {
  factory _$$LaunchpadLoadedImplCopyWith(_$LaunchpadLoadedImpl<T> value,
          $Res Function(_$LaunchpadLoadedImpl<T>) then) =
      __$$LaunchpadLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$LaunchpadLoadedImplCopyWithImpl<T, $Res>
    extends _$LaunchpadStateCopyWithImpl<T, $Res, _$LaunchpadLoadedImpl<T>>
    implements _$$LaunchpadLoadedImplCopyWith<T, $Res> {
  __$$LaunchpadLoadedImplCopyWithImpl(_$LaunchpadLoadedImpl<T> _value,
      $Res Function(_$LaunchpadLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LaunchpadLoadedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LaunchpadLoadedImpl<T> implements LaunchpadLoaded<T> {
  const _$LaunchpadLoadedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'LaunchpadState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchpadLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchpadLoadedImplCopyWith<T, _$LaunchpadLoadedImpl<T>> get copyWith =>
      __$$LaunchpadLoadedImplCopyWithImpl<T, _$LaunchpadLoadedImpl<T>>(
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
    required TResult Function(LaunchpadInitial<T> value) initial,
    required TResult Function(LaunchpadLoading<T> value) loading,
    required TResult Function(LaunchpadLoaded<T> value) loaded,
    required TResult Function(LaunchpadError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchpadInitial<T> value)? initial,
    TResult? Function(LaunchpadLoading<T> value)? loading,
    TResult? Function(LaunchpadLoaded<T> value)? loaded,
    TResult? Function(LaunchpadError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchpadInitial<T> value)? initial,
    TResult Function(LaunchpadLoading<T> value)? loading,
    TResult Function(LaunchpadLoaded<T> value)? loaded,
    TResult Function(LaunchpadError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LaunchpadLoaded<T> implements LaunchpadState<T> {
  const factory LaunchpadLoaded(final T data) = _$LaunchpadLoadedImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$LaunchpadLoadedImplCopyWith<T, _$LaunchpadLoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LaunchpadErrorImplCopyWith<T, $Res> {
  factory _$$LaunchpadErrorImplCopyWith(_$LaunchpadErrorImpl<T> value,
          $Res Function(_$LaunchpadErrorImpl<T>) then) =
      __$$LaunchpadErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LaunchpadErrorImplCopyWithImpl<T, $Res>
    extends _$LaunchpadStateCopyWithImpl<T, $Res, _$LaunchpadErrorImpl<T>>
    implements _$$LaunchpadErrorImplCopyWith<T, $Res> {
  __$$LaunchpadErrorImplCopyWithImpl(_$LaunchpadErrorImpl<T> _value,
      $Res Function(_$LaunchpadErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LaunchpadErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LaunchpadErrorImpl<T> implements LaunchpadError<T> {
  const _$LaunchpadErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LaunchpadState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchpadErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchpadErrorImplCopyWith<T, _$LaunchpadErrorImpl<T>> get copyWith =>
      __$$LaunchpadErrorImplCopyWithImpl<T, _$LaunchpadErrorImpl<T>>(
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
    required TResult Function(LaunchpadInitial<T> value) initial,
    required TResult Function(LaunchpadLoading<T> value) loading,
    required TResult Function(LaunchpadLoaded<T> value) loaded,
    required TResult Function(LaunchpadError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchpadInitial<T> value)? initial,
    TResult? Function(LaunchpadLoading<T> value)? loading,
    TResult? Function(LaunchpadLoaded<T> value)? loaded,
    TResult? Function(LaunchpadError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchpadInitial<T> value)? initial,
    TResult Function(LaunchpadLoading<T> value)? loading,
    TResult Function(LaunchpadLoaded<T> value)? loaded,
    TResult Function(LaunchpadError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LaunchpadError<T> implements LaunchpadState<T> {
  const factory LaunchpadError(final String message) = _$LaunchpadErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$LaunchpadErrorImplCopyWith<T, _$LaunchpadErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
