// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launches_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LaunchesState<T> {
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
    required TResult Function(LaunchesLoading<T> value) loading,
    required TResult Function(LaunchesLoaded<T> value) loaded,
    required TResult Function(LaunchesError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LaunchesLoading<T> value)? loading,
    TResult? Function(LaunchesLoaded<T> value)? loaded,
    TResult? Function(LaunchesError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LaunchesLoading<T> value)? loading,
    TResult Function(LaunchesLoaded<T> value)? loaded,
    TResult Function(LaunchesError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchesStateCopyWith<T, $Res> {
  factory $LaunchesStateCopyWith(
          LaunchesState<T> value, $Res Function(LaunchesState<T>) then) =
      _$LaunchesStateCopyWithImpl<T, $Res, LaunchesState<T>>;
}

/// @nodoc
class _$LaunchesStateCopyWithImpl<T, $Res, $Val extends LaunchesState<T>>
    implements $LaunchesStateCopyWith<T, $Res> {
  _$LaunchesStateCopyWithImpl(this._value, this._then);

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
    extends _$LaunchesStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'LaunchesState<$T>.initial()';
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
    required TResult Function(LaunchesLoading<T> value) loading,
    required TResult Function(LaunchesLoaded<T> value) loaded,
    required TResult Function(LaunchesError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LaunchesLoading<T> value)? loading,
    TResult? Function(LaunchesLoaded<T> value)? loaded,
    TResult? Function(LaunchesError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LaunchesLoading<T> value)? loading,
    TResult Function(LaunchesLoaded<T> value)? loaded,
    TResult Function(LaunchesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LaunchesState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LaunchesLoadingImplCopyWith<T, $Res> {
  factory _$$LaunchesLoadingImplCopyWith(_$LaunchesLoadingImpl<T> value,
          $Res Function(_$LaunchesLoadingImpl<T>) then) =
      __$$LaunchesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LaunchesLoadingImplCopyWithImpl<T, $Res>
    extends _$LaunchesStateCopyWithImpl<T, $Res, _$LaunchesLoadingImpl<T>>
    implements _$$LaunchesLoadingImplCopyWith<T, $Res> {
  __$$LaunchesLoadingImplCopyWithImpl(_$LaunchesLoadingImpl<T> _value,
      $Res Function(_$LaunchesLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LaunchesLoadingImpl<T> implements LaunchesLoading<T> {
  const _$LaunchesLoadingImpl();

  @override
  String toString() {
    return 'LaunchesState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LaunchesLoadingImpl<T>);
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
    required TResult Function(LaunchesLoading<T> value) loading,
    required TResult Function(LaunchesLoaded<T> value) loaded,
    required TResult Function(LaunchesError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LaunchesLoading<T> value)? loading,
    TResult? Function(LaunchesLoaded<T> value)? loaded,
    TResult? Function(LaunchesError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LaunchesLoading<T> value)? loading,
    TResult Function(LaunchesLoaded<T> value)? loaded,
    TResult Function(LaunchesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LaunchesLoading<T> implements LaunchesState<T> {
  const factory LaunchesLoading() = _$LaunchesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$LaunchesLoadedImplCopyWith<T, $Res> {
  factory _$$LaunchesLoadedImplCopyWith(_$LaunchesLoadedImpl<T> value,
          $Res Function(_$LaunchesLoadedImpl<T>) then) =
      __$$LaunchesLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$LaunchesLoadedImplCopyWithImpl<T, $Res>
    extends _$LaunchesStateCopyWithImpl<T, $Res, _$LaunchesLoadedImpl<T>>
    implements _$$LaunchesLoadedImplCopyWith<T, $Res> {
  __$$LaunchesLoadedImplCopyWithImpl(_$LaunchesLoadedImpl<T> _value,
      $Res Function(_$LaunchesLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LaunchesLoadedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LaunchesLoadedImpl<T> implements LaunchesLoaded<T> {
  const _$LaunchesLoadedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'LaunchesState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchesLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchesLoadedImplCopyWith<T, _$LaunchesLoadedImpl<T>> get copyWith =>
      __$$LaunchesLoadedImplCopyWithImpl<T, _$LaunchesLoadedImpl<T>>(
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
    required TResult Function(LaunchesLoading<T> value) loading,
    required TResult Function(LaunchesLoaded<T> value) loaded,
    required TResult Function(LaunchesError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LaunchesLoading<T> value)? loading,
    TResult? Function(LaunchesLoaded<T> value)? loaded,
    TResult? Function(LaunchesError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LaunchesLoading<T> value)? loading,
    TResult Function(LaunchesLoaded<T> value)? loaded,
    TResult Function(LaunchesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LaunchesLoaded<T> implements LaunchesState<T> {
  const factory LaunchesLoaded(final T data) = _$LaunchesLoadedImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$LaunchesLoadedImplCopyWith<T, _$LaunchesLoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LaunchesErrorImplCopyWith<T, $Res> {
  factory _$$LaunchesErrorImplCopyWith(_$LaunchesErrorImpl<T> value,
          $Res Function(_$LaunchesErrorImpl<T>) then) =
      __$$LaunchesErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LaunchesErrorImplCopyWithImpl<T, $Res>
    extends _$LaunchesStateCopyWithImpl<T, $Res, _$LaunchesErrorImpl<T>>
    implements _$$LaunchesErrorImplCopyWith<T, $Res> {
  __$$LaunchesErrorImplCopyWithImpl(_$LaunchesErrorImpl<T> _value,
      $Res Function(_$LaunchesErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LaunchesErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LaunchesErrorImpl<T> implements LaunchesError<T> {
  const _$LaunchesErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LaunchesState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchesErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchesErrorImplCopyWith<T, _$LaunchesErrorImpl<T>> get copyWith =>
      __$$LaunchesErrorImplCopyWithImpl<T, _$LaunchesErrorImpl<T>>(
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
    required TResult Function(LaunchesLoading<T> value) loading,
    required TResult Function(LaunchesLoaded<T> value) loaded,
    required TResult Function(LaunchesError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LaunchesLoading<T> value)? loading,
    TResult? Function(LaunchesLoaded<T> value)? loaded,
    TResult? Function(LaunchesError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LaunchesLoading<T> value)? loading,
    TResult Function(LaunchesLoaded<T> value)? loaded,
    TResult Function(LaunchesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LaunchesError<T> implements LaunchesState<T> {
  const factory LaunchesError({required final String message}) =
      _$LaunchesErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$LaunchesErrorImplCopyWith<T, _$LaunchesErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
