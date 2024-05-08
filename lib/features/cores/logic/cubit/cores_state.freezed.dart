// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cores_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoresState<T> {
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
    required TResult Function(CoresLoading<T> value) loading,
    required TResult Function(CoresLoaded<T> value) loaded,
    required TResult Function(CoresError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CoresLoading<T> value)? loading,
    TResult? Function(CoresLoaded<T> value)? loaded,
    TResult? Function(CoresError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CoresLoading<T> value)? loading,
    TResult Function(CoresLoaded<T> value)? loaded,
    TResult Function(CoresError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoresStateCopyWith<T, $Res> {
  factory $CoresStateCopyWith(
          CoresState<T> value, $Res Function(CoresState<T>) then) =
      _$CoresStateCopyWithImpl<T, $Res, CoresState<T>>;
}

/// @nodoc
class _$CoresStateCopyWithImpl<T, $Res, $Val extends CoresState<T>>
    implements $CoresStateCopyWith<T, $Res> {
  _$CoresStateCopyWithImpl(this._value, this._then);

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
    extends _$CoresStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'CoresState<$T>.initial()';
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
    required TResult Function(CoresLoading<T> value) loading,
    required TResult Function(CoresLoaded<T> value) loaded,
    required TResult Function(CoresError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CoresLoading<T> value)? loading,
    TResult? Function(CoresLoaded<T> value)? loaded,
    TResult? Function(CoresError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CoresLoading<T> value)? loading,
    TResult Function(CoresLoaded<T> value)? loaded,
    TResult Function(CoresError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements CoresState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$CoresLoadingImplCopyWith<T, $Res> {
  factory _$$CoresLoadingImplCopyWith(_$CoresLoadingImpl<T> value,
          $Res Function(_$CoresLoadingImpl<T>) then) =
      __$$CoresLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CoresLoadingImplCopyWithImpl<T, $Res>
    extends _$CoresStateCopyWithImpl<T, $Res, _$CoresLoadingImpl<T>>
    implements _$$CoresLoadingImplCopyWith<T, $Res> {
  __$$CoresLoadingImplCopyWithImpl(
      _$CoresLoadingImpl<T> _value, $Res Function(_$CoresLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CoresLoadingImpl<T> implements CoresLoading<T> {
  const _$CoresLoadingImpl();

  @override
  String toString() {
    return 'CoresState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoresLoadingImpl<T>);
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
    required TResult Function(CoresLoading<T> value) loading,
    required TResult Function(CoresLoaded<T> value) loaded,
    required TResult Function(CoresError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CoresLoading<T> value)? loading,
    TResult? Function(CoresLoaded<T> value)? loaded,
    TResult? Function(CoresError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CoresLoading<T> value)? loading,
    TResult Function(CoresLoaded<T> value)? loaded,
    TResult Function(CoresError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoresLoading<T> implements CoresState<T> {
  const factory CoresLoading() = _$CoresLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CoresLoadedImplCopyWith<T, $Res> {
  factory _$$CoresLoadedImplCopyWith(_$CoresLoadedImpl<T> value,
          $Res Function(_$CoresLoadedImpl<T>) then) =
      __$$CoresLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CoresLoadedImplCopyWithImpl<T, $Res>
    extends _$CoresStateCopyWithImpl<T, $Res, _$CoresLoadedImpl<T>>
    implements _$$CoresLoadedImplCopyWith<T, $Res> {
  __$$CoresLoadedImplCopyWithImpl(
      _$CoresLoadedImpl<T> _value, $Res Function(_$CoresLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CoresLoadedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CoresLoadedImpl<T> implements CoresLoaded<T> {
  const _$CoresLoadedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CoresState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoresLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoresLoadedImplCopyWith<T, _$CoresLoadedImpl<T>> get copyWith =>
      __$$CoresLoadedImplCopyWithImpl<T, _$CoresLoadedImpl<T>>(
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
    required TResult Function(CoresLoading<T> value) loading,
    required TResult Function(CoresLoaded<T> value) loaded,
    required TResult Function(CoresError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CoresLoading<T> value)? loading,
    TResult? Function(CoresLoaded<T> value)? loaded,
    TResult? Function(CoresError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CoresLoading<T> value)? loading,
    TResult Function(CoresLoaded<T> value)? loaded,
    TResult Function(CoresError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CoresLoaded<T> implements CoresState<T> {
  const factory CoresLoaded(final T data) = _$CoresLoadedImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$CoresLoadedImplCopyWith<T, _$CoresLoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoresErrorImplCopyWith<T, $Res> {
  factory _$$CoresErrorImplCopyWith(
          _$CoresErrorImpl<T> value, $Res Function(_$CoresErrorImpl<T>) then) =
      __$$CoresErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CoresErrorImplCopyWithImpl<T, $Res>
    extends _$CoresStateCopyWithImpl<T, $Res, _$CoresErrorImpl<T>>
    implements _$$CoresErrorImplCopyWith<T, $Res> {
  __$$CoresErrorImplCopyWithImpl(
      _$CoresErrorImpl<T> _value, $Res Function(_$CoresErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CoresErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CoresErrorImpl<T> implements CoresError<T> {
  const _$CoresErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CoresState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoresErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoresErrorImplCopyWith<T, _$CoresErrorImpl<T>> get copyWith =>
      __$$CoresErrorImplCopyWithImpl<T, _$CoresErrorImpl<T>>(this, _$identity);

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
    required TResult Function(CoresLoading<T> value) loading,
    required TResult Function(CoresLoaded<T> value) loaded,
    required TResult Function(CoresError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CoresLoading<T> value)? loading,
    TResult? Function(CoresLoaded<T> value)? loaded,
    TResult? Function(CoresError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CoresLoading<T> value)? loading,
    TResult Function(CoresLoaded<T> value)? loaded,
    TResult Function(CoresError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CoresError<T> implements CoresState<T> {
  const factory CoresError({required final String message}) =
      _$CoresErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$CoresErrorImplCopyWith<T, _$CoresErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
