// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scan.failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanFailureCopyWith<ScanFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanFailureCopyWith<$Res> {
  factory $ScanFailureCopyWith(
          ScanFailure value, $Res Function(ScanFailure) then) =
      _$ScanFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ScanFailureCopyWithImpl<$Res> implements $ScanFailureCopyWith<$Res> {
  _$ScanFailureCopyWithImpl(this._value, this._then);

  final ScanFailure _value;
  // ignore: unused_field
  final $Res Function(ScanFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res>
    implements $ScanFailureCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$ScanFailureCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ServerError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ScanFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ScanFailure {
  const factory _ServerError({final String? message}) = _$_ServerError;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DuplicateScanErrorCopyWith<$Res>
    implements $ScanFailureCopyWith<$Res> {
  factory _$$_DuplicateScanErrorCopyWith(_$_DuplicateScanError value,
          $Res Function(_$_DuplicateScanError) then) =
      __$$_DuplicateScanErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? message, ScanObject? scanObject});
}

/// @nodoc
class __$$_DuplicateScanErrorCopyWithImpl<$Res>
    extends _$ScanFailureCopyWithImpl<$Res>
    implements _$$_DuplicateScanErrorCopyWith<$Res> {
  __$$_DuplicateScanErrorCopyWithImpl(
      _$_DuplicateScanError _value, $Res Function(_$_DuplicateScanError) _then)
      : super(_value, (v) => _then(v as _$_DuplicateScanError));

  @override
  _$_DuplicateScanError get _value => super._value as _$_DuplicateScanError;

  @override
  $Res call({
    Object? message = freezed,
    Object? scanObject = freezed,
  }) {
    return _then(_$_DuplicateScanError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      scanObject: scanObject == freezed
          ? _value.scanObject
          : scanObject // ignore: cast_nullable_to_non_nullable
              as ScanObject?,
    ));
  }
}

/// @nodoc

class _$_DuplicateScanError implements _DuplicateScanError {
  const _$_DuplicateScanError({this.message, this.scanObject});

  @override
  final String? message;
  @override
  final ScanObject? scanObject;

  @override
  String toString() {
    return 'ScanFailure.duplicateScanError(message: $message, scanObject: $scanObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DuplicateScanError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.scanObject, scanObject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(scanObject));

  @JsonKey(ignore: true)
  @override
  _$$_DuplicateScanErrorCopyWith<_$_DuplicateScanError> get copyWith =>
      __$$_DuplicateScanErrorCopyWithImpl<_$_DuplicateScanError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) {
    return duplicateScanError(message, scanObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
  }) {
    return duplicateScanError?.call(message, scanObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) {
    if (duplicateScanError != null) {
      return duplicateScanError(message, scanObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) {
    return duplicateScanError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
  }) {
    return duplicateScanError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) {
    if (duplicateScanError != null) {
      return duplicateScanError(this);
    }
    return orElse();
  }
}

abstract class _DuplicateScanError implements ScanFailure {
  const factory _DuplicateScanError(
      {final String? message,
      final ScanObject? scanObject}) = _$_DuplicateScanError;

  @override
  String? get message;
  ScanObject? get scanObject;
  @override
  @JsonKey(ignore: true)
  _$$_DuplicateScanErrorCopyWith<_$_DuplicateScanError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidEventErrorCopyWith<$Res>
    implements $ScanFailureCopyWith<$Res> {
  factory _$$_InvalidEventErrorCopyWith(_$_InvalidEventError value,
          $Res Function(_$_InvalidEventError) then) =
      __$$_InvalidEventErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$_InvalidEventErrorCopyWithImpl<$Res>
    extends _$ScanFailureCopyWithImpl<$Res>
    implements _$$_InvalidEventErrorCopyWith<$Res> {
  __$$_InvalidEventErrorCopyWithImpl(
      _$_InvalidEventError _value, $Res Function(_$_InvalidEventError) _then)
      : super(_value, (v) => _then(v as _$_InvalidEventError));

  @override
  _$_InvalidEventError get _value => super._value as _$_InvalidEventError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_InvalidEventError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InvalidEventError implements _InvalidEventError {
  const _$_InvalidEventError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ScanFailure.invalidEventError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidEventError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidEventErrorCopyWith<_$_InvalidEventError> get copyWith =>
      __$$_InvalidEventErrorCopyWithImpl<_$_InvalidEventError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) {
    return invalidEventError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
  }) {
    return invalidEventError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) {
    if (invalidEventError != null) {
      return invalidEventError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) {
    return invalidEventError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
  }) {
    return invalidEventError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) {
    if (invalidEventError != null) {
      return invalidEventError(this);
    }
    return orElse();
  }
}

abstract class _InvalidEventError implements ScanFailure {
  const factory _InvalidEventError({final String? message}) =
      _$_InvalidEventError;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidEventErrorCopyWith<_$_InvalidEventError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidScanErrorCopyWith<$Res>
    implements $ScanFailureCopyWith<$Res> {
  factory _$$_InvalidScanErrorCopyWith(
          _$_InvalidScanError value, $Res Function(_$_InvalidScanError) then) =
      __$$_InvalidScanErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$_InvalidScanErrorCopyWithImpl<$Res>
    extends _$ScanFailureCopyWithImpl<$Res>
    implements _$$_InvalidScanErrorCopyWith<$Res> {
  __$$_InvalidScanErrorCopyWithImpl(
      _$_InvalidScanError _value, $Res Function(_$_InvalidScanError) _then)
      : super(_value, (v) => _then(v as _$_InvalidScanError));

  @override
  _$_InvalidScanError get _value => super._value as _$_InvalidScanError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_InvalidScanError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InvalidScanError implements _InvalidScanError {
  const _$_InvalidScanError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ScanFailure.invalidScanError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidScanError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidScanErrorCopyWith<_$_InvalidScanError> get copyWith =>
      __$$_InvalidScanErrorCopyWithImpl<_$_InvalidScanError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) {
    return invalidScanError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
  }) {
    return invalidScanError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) {
    if (invalidScanError != null) {
      return invalidScanError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) {
    return invalidScanError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
  }) {
    return invalidScanError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) {
    if (invalidScanError != null) {
      return invalidScanError(this);
    }
    return orElse();
  }
}

abstract class _InvalidScanError implements ScanFailure {
  const factory _InvalidScanError({final String? message}) =
      _$_InvalidScanError;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidScanErrorCopyWith<_$_InvalidScanError> get copyWith =>
      throw _privateConstructorUsedError;
}
