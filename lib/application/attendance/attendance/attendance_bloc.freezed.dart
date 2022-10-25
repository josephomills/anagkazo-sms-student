// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttendanceEvent {
  LectureType get lectureType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LectureType lectureType) getScans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LectureType lectureType)? getScans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LectureType lectureType)? getScans,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetScans value) getScans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetScans value)? getScans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetScans value)? getScans,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendanceEventCopyWith<AttendanceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceEventCopyWith<$Res> {
  factory $AttendanceEventCopyWith(
          AttendanceEvent value, $Res Function(AttendanceEvent) then) =
      _$AttendanceEventCopyWithImpl<$Res>;
  $Res call({LectureType lectureType});
}

/// @nodoc
class _$AttendanceEventCopyWithImpl<$Res>
    implements $AttendanceEventCopyWith<$Res> {
  _$AttendanceEventCopyWithImpl(this._value, this._then);

  final AttendanceEvent _value;
  // ignore: unused_field
  final $Res Function(AttendanceEvent) _then;

  @override
  $Res call({
    Object? lectureType = freezed,
  }) {
    return _then(_value.copyWith(
      lectureType: lectureType == freezed
          ? _value.lectureType
          : lectureType // ignore: cast_nullable_to_non_nullable
              as LectureType,
    ));
  }
}

/// @nodoc
abstract class _$$_GetScansCopyWith<$Res>
    implements $AttendanceEventCopyWith<$Res> {
  factory _$$_GetScansCopyWith(
          _$_GetScans value, $Res Function(_$_GetScans) then) =
      __$$_GetScansCopyWithImpl<$Res>;
  @override
  $Res call({LectureType lectureType});
}

/// @nodoc
class __$$_GetScansCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res>
    implements _$$_GetScansCopyWith<$Res> {
  __$$_GetScansCopyWithImpl(
      _$_GetScans _value, $Res Function(_$_GetScans) _then)
      : super(_value, (v) => _then(v as _$_GetScans));

  @override
  _$_GetScans get _value => super._value as _$_GetScans;

  @override
  $Res call({
    Object? lectureType = freezed,
  }) {
    return _then(_$_GetScans(
      lectureType: lectureType == freezed
          ? _value.lectureType
          : lectureType // ignore: cast_nullable_to_non_nullable
              as LectureType,
    ));
  }
}

/// @nodoc

class _$_GetScans implements _GetScans {
  const _$_GetScans({required this.lectureType});

  @override
  final LectureType lectureType;

  @override
  String toString() {
    return 'AttendanceEvent.getScans(lectureType: $lectureType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetScans &&
            const DeepCollectionEquality()
                .equals(other.lectureType, lectureType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(lectureType));

  @JsonKey(ignore: true)
  @override
  _$$_GetScansCopyWith<_$_GetScans> get copyWith =>
      __$$_GetScansCopyWithImpl<_$_GetScans>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LectureType lectureType) getScans,
  }) {
    return getScans(lectureType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LectureType lectureType)? getScans,
  }) {
    return getScans?.call(lectureType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LectureType lectureType)? getScans,
    required TResult orElse(),
  }) {
    if (getScans != null) {
      return getScans(lectureType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetScans value) getScans,
  }) {
    return getScans(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetScans value)? getScans,
  }) {
    return getScans?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetScans value)? getScans,
    required TResult orElse(),
  }) {
    if (getScans != null) {
      return getScans(this);
    }
    return orElse();
  }
}

abstract class _GetScans implements AttendanceEvent {
  const factory _GetScans({required final LectureType lectureType}) =
      _$_GetScans;

  @override
  LectureType get lectureType;
  @override
  @JsonKey(ignore: true)
  _$$_GetScansCopyWith<_$_GetScans> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AttendanceState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
      get failureOrQueryOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendanceStateCopyWith<AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
          AttendanceState value, $Res Function(AttendanceState) then) =
      _$AttendanceStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
          failureOrQueryOption});
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  final AttendanceState _value;
  // ignore: unused_field
  final $Res Function(AttendanceState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? failureOrQueryOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrQueryOption: failureOrQueryOption == freezed
          ? _value.failureOrQueryOption
          : failureOrQueryOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_AttendanceStateCopyWith<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  factory _$$_AttendanceStateCopyWith(
          _$_AttendanceState value, $Res Function(_$_AttendanceState) then) =
      __$$_AttendanceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
          failureOrQueryOption});
}

/// @nodoc
class __$$_AttendanceStateCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res>
    implements _$$_AttendanceStateCopyWith<$Res> {
  __$$_AttendanceStateCopyWithImpl(
      _$_AttendanceState _value, $Res Function(_$_AttendanceState) _then)
      : super(_value, (v) => _then(v as _$_AttendanceState));

  @override
  _$_AttendanceState get _value => super._value as _$_AttendanceState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? failureOrQueryOption = freezed,
  }) {
    return _then(_$_AttendanceState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrQueryOption: failureOrQueryOption == freezed
          ? _value.failureOrQueryOption
          : failureOrQueryOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>,
    ));
  }
}

/// @nodoc

class _$_AttendanceState implements _AttendanceState {
  const _$_AttendanceState(
      {required this.isLoading, required this.failureOrQueryOption});

  @override
  final bool isLoading;
  @override
  final Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
      failureOrQueryOption;

  @override
  String toString() {
    return 'AttendanceState(isLoading: $isLoading, failureOrQueryOption: $failureOrQueryOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOrQueryOption, failureOrQueryOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOrQueryOption));

  @JsonKey(ignore: true)
  @override
  _$$_AttendanceStateCopyWith<_$_AttendanceState> get copyWith =>
      __$$_AttendanceStateCopyWithImpl<_$_AttendanceState>(this, _$identity);
}

abstract class _AttendanceState implements AttendanceState {
  const factory _AttendanceState(
      {required final bool isLoading,
      required final Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
          failureOrQueryOption}) = _$_AttendanceState;

  @override
  bool get isLoading;
  @override
  Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
      get failureOrQueryOption;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceStateCopyWith<_$_AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
