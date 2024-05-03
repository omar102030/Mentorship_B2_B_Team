// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompanyInfoState<T> {
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
    required TResult Function(CompanyInfoLoading<T> value) loading,
    required TResult Function(CompanyInfoLoaded<T> value) loaded,
    required TResult Function(CompanyInfoError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CompanyInfoLoading<T> value)? loading,
    TResult? Function(CompanyInfoLoaded<T> value)? loaded,
    TResult? Function(CompanyInfoError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CompanyInfoLoading<T> value)? loading,
    TResult Function(CompanyInfoLoaded<T> value)? loaded,
    TResult Function(CompanyInfoError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoStateCopyWith<T, $Res> {
  factory $CompanyInfoStateCopyWith(
          CompanyInfoState<T> value, $Res Function(CompanyInfoState<T>) then) =
      _$CompanyInfoStateCopyWithImpl<T, $Res, CompanyInfoState<T>>;
}

/// @nodoc
class _$CompanyInfoStateCopyWithImpl<T, $Res, $Val extends CompanyInfoState<T>>
    implements $CompanyInfoStateCopyWith<T, $Res> {
  _$CompanyInfoStateCopyWithImpl(this._value, this._then);

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
    extends _$CompanyInfoStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'CompanyInfoState<$T>.initial()';
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
    required TResult Function(CompanyInfoLoading<T> value) loading,
    required TResult Function(CompanyInfoLoaded<T> value) loaded,
    required TResult Function(CompanyInfoError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CompanyInfoLoading<T> value)? loading,
    TResult? Function(CompanyInfoLoaded<T> value)? loaded,
    TResult? Function(CompanyInfoError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CompanyInfoLoading<T> value)? loading,
    TResult Function(CompanyInfoLoaded<T> value)? loaded,
    TResult Function(CompanyInfoError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements CompanyInfoState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$CompanyInfoLoadingImplCopyWith<T, $Res> {
  factory _$$CompanyInfoLoadingImplCopyWith(_$CompanyInfoLoadingImpl<T> value,
          $Res Function(_$CompanyInfoLoadingImpl<T>) then) =
      __$$CompanyInfoLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CompanyInfoLoadingImplCopyWithImpl<T, $Res>
    extends _$CompanyInfoStateCopyWithImpl<T, $Res, _$CompanyInfoLoadingImpl<T>>
    implements _$$CompanyInfoLoadingImplCopyWith<T, $Res> {
  __$$CompanyInfoLoadingImplCopyWithImpl(_$CompanyInfoLoadingImpl<T> _value,
      $Res Function(_$CompanyInfoLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompanyInfoLoadingImpl<T> implements CompanyInfoLoading<T> {
  const _$CompanyInfoLoadingImpl();

  @override
  String toString() {
    return 'CompanyInfoState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyInfoLoadingImpl<T>);
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
    required TResult Function(CompanyInfoLoading<T> value) loading,
    required TResult Function(CompanyInfoLoaded<T> value) loaded,
    required TResult Function(CompanyInfoError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CompanyInfoLoading<T> value)? loading,
    TResult? Function(CompanyInfoLoaded<T> value)? loaded,
    TResult? Function(CompanyInfoError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CompanyInfoLoading<T> value)? loading,
    TResult Function(CompanyInfoLoaded<T> value)? loaded,
    TResult Function(CompanyInfoError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CompanyInfoLoading<T> implements CompanyInfoState<T> {
  const factory CompanyInfoLoading() = _$CompanyInfoLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CompanyInfoLoadedImplCopyWith<T, $Res> {
  factory _$$CompanyInfoLoadedImplCopyWith(_$CompanyInfoLoadedImpl<T> value,
          $Res Function(_$CompanyInfoLoadedImpl<T>) then) =
      __$$CompanyInfoLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CompanyInfoLoadedImplCopyWithImpl<T, $Res>
    extends _$CompanyInfoStateCopyWithImpl<T, $Res, _$CompanyInfoLoadedImpl<T>>
    implements _$$CompanyInfoLoadedImplCopyWith<T, $Res> {
  __$$CompanyInfoLoadedImplCopyWithImpl(_$CompanyInfoLoadedImpl<T> _value,
      $Res Function(_$CompanyInfoLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CompanyInfoLoadedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CompanyInfoLoadedImpl<T> implements CompanyInfoLoaded<T> {
  const _$CompanyInfoLoadedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CompanyInfoState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyInfoLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyInfoLoadedImplCopyWith<T, _$CompanyInfoLoadedImpl<T>>
      get copyWith =>
          __$$CompanyInfoLoadedImplCopyWithImpl<T, _$CompanyInfoLoadedImpl<T>>(
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
    required TResult Function(CompanyInfoLoading<T> value) loading,
    required TResult Function(CompanyInfoLoaded<T> value) loaded,
    required TResult Function(CompanyInfoError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CompanyInfoLoading<T> value)? loading,
    TResult? Function(CompanyInfoLoaded<T> value)? loaded,
    TResult? Function(CompanyInfoError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CompanyInfoLoading<T> value)? loading,
    TResult Function(CompanyInfoLoaded<T> value)? loaded,
    TResult Function(CompanyInfoError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CompanyInfoLoaded<T> implements CompanyInfoState<T> {
  const factory CompanyInfoLoaded(final T data) = _$CompanyInfoLoadedImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$CompanyInfoLoadedImplCopyWith<T, _$CompanyInfoLoadedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompanyInfoErrorImplCopyWith<T, $Res> {
  factory _$$CompanyInfoErrorImplCopyWith(_$CompanyInfoErrorImpl<T> value,
          $Res Function(_$CompanyInfoErrorImpl<T>) then) =
      __$$CompanyInfoErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CompanyInfoErrorImplCopyWithImpl<T, $Res>
    extends _$CompanyInfoStateCopyWithImpl<T, $Res, _$CompanyInfoErrorImpl<T>>
    implements _$$CompanyInfoErrorImplCopyWith<T, $Res> {
  __$$CompanyInfoErrorImplCopyWithImpl(_$CompanyInfoErrorImpl<T> _value,
      $Res Function(_$CompanyInfoErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CompanyInfoErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompanyInfoErrorImpl<T> implements CompanyInfoError<T> {
  const _$CompanyInfoErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CompanyInfoState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyInfoErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyInfoErrorImplCopyWith<T, _$CompanyInfoErrorImpl<T>> get copyWith =>
      __$$CompanyInfoErrorImplCopyWithImpl<T, _$CompanyInfoErrorImpl<T>>(
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
    required TResult Function(CompanyInfoLoading<T> value) loading,
    required TResult Function(CompanyInfoLoaded<T> value) loaded,
    required TResult Function(CompanyInfoError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CompanyInfoLoading<T> value)? loading,
    TResult? Function(CompanyInfoLoaded<T> value)? loaded,
    TResult? Function(CompanyInfoError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CompanyInfoLoading<T> value)? loading,
    TResult Function(CompanyInfoLoaded<T> value)? loaded,
    TResult Function(CompanyInfoError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CompanyInfoError<T> implements CompanyInfoState<T> {
  const factory CompanyInfoError({required final String message}) =
      _$CompanyInfoErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$CompanyInfoErrorImplCopyWith<T, _$CompanyInfoErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
