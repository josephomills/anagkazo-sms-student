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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LectureType lectureType) tabSelected,
    required TResult Function() getAllQueries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LectureType lectureType)? tabSelected,
    TResult Function()? getAllQueries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LectureType lectureType)? tabSelected,
    TResult Function()? getAllQueries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabSelected value) tabSelected,
    required TResult Function(_GetAllQueries value) getAllQueries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_GetAllQueries value)? getAllQueries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_GetAllQueries value)? getAllQueries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceEventCopyWith<$Res> {
  factory $AttendanceEventCopyWith(
          AttendanceEvent value, $Res Function(AttendanceEvent) then) =
      _$AttendanceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AttendanceEventCopyWithImpl<$Res>
    implements $AttendanceEventCopyWith<$Res> {
  _$AttendanceEventCopyWithImpl(this._value, this._then);

  final AttendanceEvent _value;
  // ignore: unused_field
  final $Res Function(AttendanceEvent) _then;
}

/// @nodoc
abstract class _$$_TabSelectedCopyWith<$Res> {
  factory _$$_TabSelectedCopyWith(
          _$_TabSelected value, $Res Function(_$_TabSelected) then) =
      __$$_TabSelectedCopyWithImpl<$Res>;
  $Res call({LectureType lectureType});
}

/// @nodoc
class __$$_TabSelectedCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res>
    implements _$$_TabSelectedCopyWith<$Res> {
  __$$_TabSelectedCopyWithImpl(
      _$_TabSelected _value, $Res Function(_$_TabSelected) _then)
      : super(_value, (v) => _then(v as _$_TabSelected));

  @override
  _$_TabSelected get _value => super._value as _$_TabSelected;

  @override
  $Res call({
    Object? lectureType = freezed,
  }) {
    return _then(_$_TabSelected(
      lectureType: lectureType == freezed
          ? _value.lectureType
          : lectureType // ignore: cast_nullable_to_non_nullable
              as LectureType,
    ));
  }
}

/// @nodoc

class _$_TabSelected implements _TabSelected {
  const _$_TabSelected({required this.lectureType});

  @override
  final LectureType lectureType;

  @override
  String toString() {
    return 'AttendanceEvent.tabSelected(lectureType: $lectureType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabSelected &&
            const DeepCollectionEquality()
                .equals(other.lectureType, lectureType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(lectureType));

  @JsonKey(ignore: true)
  @override
  _$$_TabSelectedCopyWith<_$_TabSelected> get copyWith =>
      __$$_TabSelectedCopyWithImpl<_$_TabSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LectureType lectureType) tabSelected,
    required TResult Function() getAllQueries,
  }) {
    return tabSelected(lectureType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LectureType lectureType)? tabSelected,
    TResult Function()? getAllQueries,
  }) {
    return tabSelected?.call(lectureType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LectureType lectureType)? tabSelected,
    TResult Function()? getAllQueries,
    required TResult orElse(),
  }) {
    if (tabSelected != null) {
      return tabSelected(lectureType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabSelected value) tabSelected,
    required TResult Function(_GetAllQueries value) getAllQueries,
  }) {
    return tabSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_GetAllQueries value)? getAllQueries,
  }) {
    return tabSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_GetAllQueries value)? getAllQueries,
    required TResult orElse(),
  }) {
    if (tabSelected != null) {
      return tabSelected(this);
    }
    return orElse();
  }
}

abstract class _TabSelected implements AttendanceEvent {
  const factory _TabSelected({required final LectureType lectureType}) =
      _$_TabSelected;

  LectureType get lectureType;
  @JsonKey(ignore: true)
  _$$_TabSelectedCopyWith<_$_TabSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllQueriesCopyWith<$Res> {
  factory _$$_GetAllQueriesCopyWith(
          _$_GetAllQueries value, $Res Function(_$_GetAllQueries) then) =
      __$$_GetAllQueriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllQueriesCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res>
    implements _$$_GetAllQueriesCopyWith<$Res> {
  __$$_GetAllQueriesCopyWithImpl(
      _$_GetAllQueries _value, $Res Function(_$_GetAllQueries) _then)
      : super(_value, (v) => _then(v as _$_GetAllQueries));

  @override
  _$_GetAllQueries get _value => super._value as _$_GetAllQueries;
}

/// @nodoc

class _$_GetAllQueries implements _GetAllQueries {
  const _$_GetAllQueries();

  @override
  String toString() {
    return 'AttendanceEvent.getAllQueries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllQueries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LectureType lectureType) tabSelected,
    required TResult Function() getAllQueries,
  }) {
    return getAllQueries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LectureType lectureType)? tabSelected,
    TResult Function()? getAllQueries,
  }) {
    return getAllQueries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LectureType lectureType)? tabSelected,
    TResult Function()? getAllQueries,
    required TResult orElse(),
  }) {
    if (getAllQueries != null) {
      return getAllQueries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabSelected value) tabSelected,
    required TResult Function(_GetAllQueries value) getAllQueries,
  }) {
    return getAllQueries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_GetAllQueries value)? getAllQueries,
  }) {
    return getAllQueries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_GetAllQueries value)? getAllQueries,
    required TResult orElse(),
  }) {
    if (getAllQueries != null) {
      return getAllQueries(this);
    }
    return orElse();
  }
}

abstract class _GetAllQueries implements AttendanceEvent {
  const factory _GetAllQueries() = _$_GetAllQueries;
}

/// @nodoc
mixin _$AttendanceState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
      get failureOrQueryOption => throw _privateConstructorUsedError;
  Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
      get failureOrQueriesList => throw _privateConstructorUsedError;

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
          failureOrQueryOption,
      Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
          failureOrQueriesList});
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
    Object? failureOrQueriesList = freezed,
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
      failureOrQueriesList: failureOrQueriesList == freezed
          ? _value.failureOrQueriesList
          : failureOrQueriesList // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>,
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
          failureOrQueryOption,
      Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
          failureOrQueriesList});
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
    Object? failureOrQueriesList = freezed,
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
      failureOrQueriesList: failureOrQueriesList == freezed
          ? _value.failureOrQueriesList
          : failureOrQueriesList // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>,
    ));
  }
}

/// @nodoc

class _$_AttendanceState implements _AttendanceState {
  const _$_AttendanceState(
      {required this.isLoading,
      required this.failureOrQueryOption,
      required this.failureOrQueriesList});

  @override
  final bool isLoading;
  @override
  final Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
      failureOrQueryOption;
  @override
  final Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
      failureOrQueriesList;

  @override
  String toString() {
    return 'AttendanceState(isLoading: $isLoading, failureOrQueryOption: $failureOrQueryOption, failureOrQueriesList: $failureOrQueriesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOrQueryOption, failureOrQueryOption) &&
            const DeepCollectionEquality()
                .equals(other.failureOrQueriesList, failureOrQueriesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOrQueryOption),
      const DeepCollectionEquality().hash(failureOrQueriesList));

  @JsonKey(ignore: true)
  @override
  _$$_AttendanceStateCopyWith<_$_AttendanceState> get copyWith =>
      __$$_AttendanceStateCopyWithImpl<_$_AttendanceState>(this, _$identity);
}

abstract class _AttendanceState implements AttendanceState {
  const factory _AttendanceState(
      {required final bool isLoading,
      required final Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
          failureOrQueryOption,
      required final Option<
              Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
          failureOrQueriesList}) = _$_AttendanceState;

  @override
  bool get isLoading;
  @override
  Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
      get failureOrQueryOption;
  @override
  Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
      get failureOrQueriesList;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceStateCopyWith<_$_AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
