// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    required TResult Function(EventType eventType) tabSelected,
    required TResult Function() getAllQueries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventType eventType)? tabSelected,
    TResult? Function()? getAllQueries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventType eventType)? tabSelected,
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
    TResult? Function(_TabSelected value)? tabSelected,
    TResult? Function(_GetAllQueries value)? getAllQueries,
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
      _$AttendanceEventCopyWithImpl<$Res, AttendanceEvent>;
}

/// @nodoc
class _$AttendanceEventCopyWithImpl<$Res, $Val extends AttendanceEvent>
    implements $AttendanceEventCopyWith<$Res> {
  _$AttendanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TabSelectedCopyWith<$Res> {
  factory _$$_TabSelectedCopyWith(
          _$_TabSelected value, $Res Function(_$_TabSelected) then) =
      __$$_TabSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({EventType eventType});
}

/// @nodoc
class __$$_TabSelectedCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$_TabSelected>
    implements _$$_TabSelectedCopyWith<$Res> {
  __$$_TabSelectedCopyWithImpl(
      _$_TabSelected _value, $Res Function(_$_TabSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$_TabSelected(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as EventType,
    ));
  }
}

/// @nodoc

class _$_TabSelected implements _TabSelected {
  const _$_TabSelected({required this.eventType});

  @override
  final EventType eventType;

  @override
  String toString() {
    return 'AttendanceEvent.tabSelected(eventType: $eventType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabSelected &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabSelectedCopyWith<_$_TabSelected> get copyWith =>
      __$$_TabSelectedCopyWithImpl<_$_TabSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EventType eventType) tabSelected,
    required TResult Function() getAllQueries,
  }) {
    return tabSelected(eventType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventType eventType)? tabSelected,
    TResult? Function()? getAllQueries,
  }) {
    return tabSelected?.call(eventType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventType eventType)? tabSelected,
    TResult Function()? getAllQueries,
    required TResult orElse(),
  }) {
    if (tabSelected != null) {
      return tabSelected(eventType);
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
    TResult? Function(_TabSelected value)? tabSelected,
    TResult? Function(_GetAllQueries value)? getAllQueries,
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
  const factory _TabSelected({required final EventType eventType}) =
      _$_TabSelected;

  EventType get eventType;
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
    extends _$AttendanceEventCopyWithImpl<$Res, _$_GetAllQueries>
    implements _$$_GetAllQueriesCopyWith<$Res> {
  __$$_GetAllQueriesCopyWithImpl(
      _$_GetAllQueries _value, $Res Function(_$_GetAllQueries) _then)
      : super(_value, _then);
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
    required TResult Function(EventType eventType) tabSelected,
    required TResult Function() getAllQueries,
  }) {
    return getAllQueries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventType eventType)? tabSelected,
    TResult? Function()? getAllQueries,
  }) {
    return getAllQueries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventType eventType)? tabSelected,
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
    TResult? Function(_TabSelected value)? tabSelected,
    TResult? Function(_GetAllQueries value)? getAllQueries,
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
  QueryBuilder<ScanObject> get visionQueryOption =>
      throw _privateConstructorUsedError;
  QueryBuilder<ScanObject> get pillarQueryOption =>
      throw _privateConstructorUsedError;
  QueryBuilder<ScanObject> get aLiveQueryOption =>
      throw _privateConstructorUsedError;
  QueryBuilder<ScanObject> get flExpQueryOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendanceStateCopyWith<AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
          AttendanceState value, $Res Function(AttendanceState) then) =
      _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
          failureOrQueryOption,
      Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
          failureOrQueriesList,
      QueryBuilder<ScanObject> visionQueryOption,
      QueryBuilder<ScanObject> pillarQueryOption,
      QueryBuilder<ScanObject> aLiveQueryOption,
      QueryBuilder<ScanObject> flExpQueryOption});
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrQueryOption = null,
    Object? failureOrQueriesList = null,
    Object? visionQueryOption = null,
    Object? pillarQueryOption = null,
    Object? aLiveQueryOption = null,
    Object? flExpQueryOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrQueryOption: null == failureOrQueryOption
          ? _value.failureOrQueryOption
          : failureOrQueryOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>,
      failureOrQueriesList: null == failureOrQueriesList
          ? _value.failureOrQueriesList
          : failureOrQueriesList // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>,
      visionQueryOption: null == visionQueryOption
          ? _value.visionQueryOption
          : visionQueryOption // ignore: cast_nullable_to_non_nullable
              as QueryBuilder<ScanObject>,
      pillarQueryOption: null == pillarQueryOption
          ? _value.pillarQueryOption
          : pillarQueryOption // ignore: cast_nullable_to_non_nullable
              as QueryBuilder<ScanObject>,
      aLiveQueryOption: null == aLiveQueryOption
          ? _value.aLiveQueryOption
          : aLiveQueryOption // ignore: cast_nullable_to_non_nullable
              as QueryBuilder<ScanObject>,
      flExpQueryOption: null == flExpQueryOption
          ? _value.flExpQueryOption
          : flExpQueryOption // ignore: cast_nullable_to_non_nullable
              as QueryBuilder<ScanObject>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceStateCopyWith<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  factory _$$_AttendanceStateCopyWith(
          _$_AttendanceState value, $Res Function(_$_AttendanceState) then) =
      __$$_AttendanceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
          failureOrQueryOption,
      Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
          failureOrQueriesList,
      QueryBuilder<ScanObject> visionQueryOption,
      QueryBuilder<ScanObject> pillarQueryOption,
      QueryBuilder<ScanObject> aLiveQueryOption,
      QueryBuilder<ScanObject> flExpQueryOption});
}

/// @nodoc
class __$$_AttendanceStateCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$_AttendanceState>
    implements _$$_AttendanceStateCopyWith<$Res> {
  __$$_AttendanceStateCopyWithImpl(
      _$_AttendanceState _value, $Res Function(_$_AttendanceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrQueryOption = null,
    Object? failureOrQueriesList = null,
    Object? visionQueryOption = null,
    Object? pillarQueryOption = null,
    Object? aLiveQueryOption = null,
    Object? flExpQueryOption = null,
  }) {
    return _then(_$_AttendanceState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrQueryOption: null == failureOrQueryOption
          ? _value.failureOrQueryOption
          : failureOrQueryOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>,
      failureOrQueriesList: null == failureOrQueriesList
          ? _value.failureOrQueriesList
          : failureOrQueriesList // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>,
      visionQueryOption: null == visionQueryOption
          ? _value.visionQueryOption
          : visionQueryOption // ignore: cast_nullable_to_non_nullable
              as QueryBuilder<ScanObject>,
      pillarQueryOption: null == pillarQueryOption
          ? _value.pillarQueryOption
          : pillarQueryOption // ignore: cast_nullable_to_non_nullable
              as QueryBuilder<ScanObject>,
      aLiveQueryOption: null == aLiveQueryOption
          ? _value.aLiveQueryOption
          : aLiveQueryOption // ignore: cast_nullable_to_non_nullable
              as QueryBuilder<ScanObject>,
      flExpQueryOption: null == flExpQueryOption
          ? _value.flExpQueryOption
          : flExpQueryOption // ignore: cast_nullable_to_non_nullable
              as QueryBuilder<ScanObject>,
    ));
  }
}

/// @nodoc

class _$_AttendanceState implements _AttendanceState {
  const _$_AttendanceState(
      {required this.isLoading,
      required this.failureOrQueryOption,
      required this.failureOrQueriesList,
      required this.visionQueryOption,
      required this.pillarQueryOption,
      required this.aLiveQueryOption,
      required this.flExpQueryOption});

  @override
  final bool isLoading;
  @override
  final Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
      failureOrQueryOption;
  @override
  final Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
      failureOrQueriesList;
  @override
  final QueryBuilder<ScanObject> visionQueryOption;
  @override
  final QueryBuilder<ScanObject> pillarQueryOption;
  @override
  final QueryBuilder<ScanObject> aLiveQueryOption;
  @override
  final QueryBuilder<ScanObject> flExpQueryOption;

  @override
  String toString() {
    return 'AttendanceState(isLoading: $isLoading, failureOrQueryOption: $failureOrQueryOption, failureOrQueriesList: $failureOrQueriesList, visionQueryOption: $visionQueryOption, pillarQueryOption: $pillarQueryOption, aLiveQueryOption: $aLiveQueryOption, flExpQueryOption: $flExpQueryOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrQueryOption, failureOrQueryOption) ||
                other.failureOrQueryOption == failureOrQueryOption) &&
            (identical(other.failureOrQueriesList, failureOrQueriesList) ||
                other.failureOrQueriesList == failureOrQueriesList) &&
            (identical(other.visionQueryOption, visionQueryOption) ||
                other.visionQueryOption == visionQueryOption) &&
            (identical(other.pillarQueryOption, pillarQueryOption) ||
                other.pillarQueryOption == pillarQueryOption) &&
            (identical(other.aLiveQueryOption, aLiveQueryOption) ||
                other.aLiveQueryOption == aLiveQueryOption) &&
            (identical(other.flExpQueryOption, flExpQueryOption) ||
                other.flExpQueryOption == flExpQueryOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      failureOrQueryOption,
      failureOrQueriesList,
      visionQueryOption,
      pillarQueryOption,
      aLiveQueryOption,
      flExpQueryOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
          failureOrQueriesList,
      required final QueryBuilder<ScanObject> visionQueryOption,
      required final QueryBuilder<ScanObject> pillarQueryOption,
      required final QueryBuilder<ScanObject> aLiveQueryOption,
      required final QueryBuilder<ScanObject>
          flExpQueryOption}) = _$_AttendanceState;

  @override
  bool get isLoading;
  @override
  Option<Either<AttendanceFailure, QueryBuilder<ScanObject>>>
      get failureOrQueryOption;
  @override
  Option<Either<AttendanceFailure, List<QueryBuilder<ScanObject>>>>
      get failureOrQueriesList;
  @override
  QueryBuilder<ScanObject> get visionQueryOption;
  @override
  QueryBuilder<ScanObject> get pillarQueryOption;
  @override
  QueryBuilder<ScanObject> get aLiveQueryOption;
  @override
  QueryBuilder<ScanObject> get flExpQueryOption;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceStateCopyWith<_$_AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
