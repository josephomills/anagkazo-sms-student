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
    required TResult Function(int index) tabSelected,
    required TResult Function(EventCategory category) scansFetched,
    required TResult Function() allScansFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabSelected,
    TResult? Function(EventCategory category)? scansFetched,
    TResult? Function()? allScansFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabSelected,
    TResult Function(EventCategory category)? scansFetched,
    TResult Function()? allScansFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabSelected value) tabSelected,
    required TResult Function(_ScansFetched value) scansFetched,
    required TResult Function(_AllScansFetched value) allScansFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabSelected value)? tabSelected,
    TResult? Function(_ScansFetched value)? scansFetched,
    TResult? Function(_AllScansFetched value)? allScansFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_ScansFetched value)? scansFetched,
    TResult Function(_AllScansFetched value)? allScansFetched,
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
  $Res call({int index});
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
    Object? index = null,
  }) {
    return _then(_$_TabSelected(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabSelected implements _TabSelected {
  const _$_TabSelected({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'AttendanceEvent.tabSelected(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabSelected &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabSelectedCopyWith<_$_TabSelected> get copyWith =>
      __$$_TabSelectedCopyWithImpl<_$_TabSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tabSelected,
    required TResult Function(EventCategory category) scansFetched,
    required TResult Function() allScansFetched,
  }) {
    return tabSelected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabSelected,
    TResult? Function(EventCategory category)? scansFetched,
    TResult? Function()? allScansFetched,
  }) {
    return tabSelected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabSelected,
    TResult Function(EventCategory category)? scansFetched,
    TResult Function()? allScansFetched,
    required TResult orElse(),
  }) {
    if (tabSelected != null) {
      return tabSelected(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabSelected value) tabSelected,
    required TResult Function(_ScansFetched value) scansFetched,
    required TResult Function(_AllScansFetched value) allScansFetched,
  }) {
    return tabSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabSelected value)? tabSelected,
    TResult? Function(_ScansFetched value)? scansFetched,
    TResult? Function(_AllScansFetched value)? allScansFetched,
  }) {
    return tabSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_ScansFetched value)? scansFetched,
    TResult Function(_AllScansFetched value)? allScansFetched,
    required TResult orElse(),
  }) {
    if (tabSelected != null) {
      return tabSelected(this);
    }
    return orElse();
  }
}

abstract class _TabSelected implements AttendanceEvent {
  const factory _TabSelected({required final int index}) = _$_TabSelected;

  int get index;
  @JsonKey(ignore: true)
  _$$_TabSelectedCopyWith<_$_TabSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ScansFetchedCopyWith<$Res> {
  factory _$$_ScansFetchedCopyWith(
          _$_ScansFetched value, $Res Function(_$_ScansFetched) then) =
      __$$_ScansFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({EventCategory category});
}

/// @nodoc
class __$$_ScansFetchedCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$_ScansFetched>
    implements _$$_ScansFetchedCopyWith<$Res> {
  __$$_ScansFetchedCopyWithImpl(
      _$_ScansFetched _value, $Res Function(_$_ScansFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_ScansFetched(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as EventCategory,
    ));
  }
}

/// @nodoc

class _$_ScansFetched implements _ScansFetched {
  const _$_ScansFetched({required this.category});

  @override
  final EventCategory category;

  @override
  String toString() {
    return 'AttendanceEvent.scansFetched(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScansFetched &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScansFetchedCopyWith<_$_ScansFetched> get copyWith =>
      __$$_ScansFetchedCopyWithImpl<_$_ScansFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tabSelected,
    required TResult Function(EventCategory category) scansFetched,
    required TResult Function() allScansFetched,
  }) {
    return scansFetched(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabSelected,
    TResult? Function(EventCategory category)? scansFetched,
    TResult? Function()? allScansFetched,
  }) {
    return scansFetched?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabSelected,
    TResult Function(EventCategory category)? scansFetched,
    TResult Function()? allScansFetched,
    required TResult orElse(),
  }) {
    if (scansFetched != null) {
      return scansFetched(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabSelected value) tabSelected,
    required TResult Function(_ScansFetched value) scansFetched,
    required TResult Function(_AllScansFetched value) allScansFetched,
  }) {
    return scansFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabSelected value)? tabSelected,
    TResult? Function(_ScansFetched value)? scansFetched,
    TResult? Function(_AllScansFetched value)? allScansFetched,
  }) {
    return scansFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_ScansFetched value)? scansFetched,
    TResult Function(_AllScansFetched value)? allScansFetched,
    required TResult orElse(),
  }) {
    if (scansFetched != null) {
      return scansFetched(this);
    }
    return orElse();
  }
}

abstract class _ScansFetched implements AttendanceEvent {
  const factory _ScansFetched({required final EventCategory category}) =
      _$_ScansFetched;

  EventCategory get category;
  @JsonKey(ignore: true)
  _$$_ScansFetchedCopyWith<_$_ScansFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AllScansFetchedCopyWith<$Res> {
  factory _$$_AllScansFetchedCopyWith(
          _$_AllScansFetched value, $Res Function(_$_AllScansFetched) then) =
      __$$_AllScansFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AllScansFetchedCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$_AllScansFetched>
    implements _$$_AllScansFetchedCopyWith<$Res> {
  __$$_AllScansFetchedCopyWithImpl(
      _$_AllScansFetched _value, $Res Function(_$_AllScansFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AllScansFetched implements _AllScansFetched {
  const _$_AllScansFetched();

  @override
  String toString() {
    return 'AttendanceEvent.allScansFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AllScansFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tabSelected,
    required TResult Function(EventCategory category) scansFetched,
    required TResult Function() allScansFetched,
  }) {
    return allScansFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabSelected,
    TResult? Function(EventCategory category)? scansFetched,
    TResult? Function()? allScansFetched,
  }) {
    return allScansFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabSelected,
    TResult Function(EventCategory category)? scansFetched,
    TResult Function()? allScansFetched,
    required TResult orElse(),
  }) {
    if (allScansFetched != null) {
      return allScansFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabSelected value) tabSelected,
    required TResult Function(_ScansFetched value) scansFetched,
    required TResult Function(_AllScansFetched value) allScansFetched,
  }) {
    return allScansFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabSelected value)? tabSelected,
    TResult? Function(_ScansFetched value)? scansFetched,
    TResult? Function(_AllScansFetched value)? allScansFetched,
  }) {
    return allScansFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabSelected value)? tabSelected,
    TResult Function(_ScansFetched value)? scansFetched,
    TResult Function(_AllScansFetched value)? allScansFetched,
    required TResult orElse(),
  }) {
    if (allScansFetched != null) {
      return allScansFetched(this);
    }
    return orElse();
  }
}

abstract class _AllScansFetched implements AttendanceEvent {
  const factory _AllScansFetched() = _$_AllScansFetched;
}

/// @nodoc
mixin _$AttendanceState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;
  Either<AttendanceFailure, List<ScanObject>> get failureOrLectureScans =>
      throw _privateConstructorUsedError;
  Either<AttendanceFailure, List<ScanObject>> get failureOrChurchScans =>
      throw _privateConstructorUsedError;
  Either<AttendanceFailure, List<ScanObject>> get failureOrOtherScans =>
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
      int selectedTab,
      Either<AttendanceFailure, List<ScanObject>> failureOrLectureScans,
      Either<AttendanceFailure, List<ScanObject>> failureOrChurchScans,
      Either<AttendanceFailure, List<ScanObject>> failureOrOtherScans});
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
    Object? selectedTab = null,
    Object? failureOrLectureScans = null,
    Object? failureOrChurchScans = null,
    Object? failureOrOtherScans = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrLectureScans: null == failureOrLectureScans
          ? _value.failureOrLectureScans
          : failureOrLectureScans // ignore: cast_nullable_to_non_nullable
              as Either<AttendanceFailure, List<ScanObject>>,
      failureOrChurchScans: null == failureOrChurchScans
          ? _value.failureOrChurchScans
          : failureOrChurchScans // ignore: cast_nullable_to_non_nullable
              as Either<AttendanceFailure, List<ScanObject>>,
      failureOrOtherScans: null == failureOrOtherScans
          ? _value.failureOrOtherScans
          : failureOrOtherScans // ignore: cast_nullable_to_non_nullable
              as Either<AttendanceFailure, List<ScanObject>>,
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
      int selectedTab,
      Either<AttendanceFailure, List<ScanObject>> failureOrLectureScans,
      Either<AttendanceFailure, List<ScanObject>> failureOrChurchScans,
      Either<AttendanceFailure, List<ScanObject>> failureOrOtherScans});
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
    Object? selectedTab = null,
    Object? failureOrLectureScans = null,
    Object? failureOrChurchScans = null,
    Object? failureOrOtherScans = null,
  }) {
    return _then(_$_AttendanceState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrLectureScans: null == failureOrLectureScans
          ? _value.failureOrLectureScans
          : failureOrLectureScans // ignore: cast_nullable_to_non_nullable
              as Either<AttendanceFailure, List<ScanObject>>,
      failureOrChurchScans: null == failureOrChurchScans
          ? _value.failureOrChurchScans
          : failureOrChurchScans // ignore: cast_nullable_to_non_nullable
              as Either<AttendanceFailure, List<ScanObject>>,
      failureOrOtherScans: null == failureOrOtherScans
          ? _value.failureOrOtherScans
          : failureOrOtherScans // ignore: cast_nullable_to_non_nullable
              as Either<AttendanceFailure, List<ScanObject>>,
    ));
  }
}

/// @nodoc

class _$_AttendanceState implements _AttendanceState {
  const _$_AttendanceState(
      {required this.isLoading,
      required this.selectedTab,
      required this.failureOrLectureScans,
      required this.failureOrChurchScans,
      required this.failureOrOtherScans});

  @override
  final bool isLoading;
  @override
  final int selectedTab;
  @override
  final Either<AttendanceFailure, List<ScanObject>> failureOrLectureScans;
  @override
  final Either<AttendanceFailure, List<ScanObject>> failureOrChurchScans;
  @override
  final Either<AttendanceFailure, List<ScanObject>> failureOrOtherScans;

  @override
  String toString() {
    return 'AttendanceState(isLoading: $isLoading, selectedTab: $selectedTab, failureOrLectureScans: $failureOrLectureScans, failureOrChurchScans: $failureOrChurchScans, failureOrOtherScans: $failureOrOtherScans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.failureOrLectureScans, failureOrLectureScans) ||
                other.failureOrLectureScans == failureOrLectureScans) &&
            (identical(other.failureOrChurchScans, failureOrChurchScans) ||
                other.failureOrChurchScans == failureOrChurchScans) &&
            (identical(other.failureOrOtherScans, failureOrOtherScans) ||
                other.failureOrOtherScans == failureOrOtherScans));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, selectedTab,
      failureOrLectureScans, failureOrChurchScans, failureOrOtherScans);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceStateCopyWith<_$_AttendanceState> get copyWith =>
      __$$_AttendanceStateCopyWithImpl<_$_AttendanceState>(this, _$identity);
}

abstract class _AttendanceState implements AttendanceState {
  const factory _AttendanceState(
      {required final bool isLoading,
      required final int selectedTab,
      required final Either<AttendanceFailure, List<ScanObject>>
          failureOrLectureScans,
      required final Either<AttendanceFailure, List<ScanObject>>
          failureOrChurchScans,
      required final Either<AttendanceFailure, List<ScanObject>>
          failureOrOtherScans}) = _$_AttendanceState;

  @override
  bool get isLoading;
  @override
  int get selectedTab;
  @override
  Either<AttendanceFailure, List<ScanObject>> get failureOrLectureScans;
  @override
  Either<AttendanceFailure, List<ScanObject>> get failureOrChurchScans;
  @override
  Either<AttendanceFailure, List<ScanObject>> get failureOrOtherScans;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceStateCopyWith<_$_AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
