// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_fellowship_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyFellowshipEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyFellowshipServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMyFellowshipServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyFellowshipServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyFellowshipServices value)
        getMyFellowshipServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMyFellowshipServices value)? getMyFellowshipServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyFellowshipServices value)? getMyFellowshipServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFellowshipEventCopyWith<$Res> {
  factory $MyFellowshipEventCopyWith(
          MyFellowshipEvent value, $Res Function(MyFellowshipEvent) then) =
      _$MyFellowshipEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyFellowshipEventCopyWithImpl<$Res>
    implements $MyFellowshipEventCopyWith<$Res> {
  _$MyFellowshipEventCopyWithImpl(this._value, this._then);

  final MyFellowshipEvent _value;
  // ignore: unused_field
  final $Res Function(MyFellowshipEvent) _then;
}

/// @nodoc
abstract class _$$_GetMyFellowshipServicesCopyWith<$Res> {
  factory _$$_GetMyFellowshipServicesCopyWith(_$_GetMyFellowshipServices value,
          $Res Function(_$_GetMyFellowshipServices) then) =
      __$$_GetMyFellowshipServicesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetMyFellowshipServicesCopyWithImpl<$Res>
    extends _$MyFellowshipEventCopyWithImpl<$Res>
    implements _$$_GetMyFellowshipServicesCopyWith<$Res> {
  __$$_GetMyFellowshipServicesCopyWithImpl(_$_GetMyFellowshipServices _value,
      $Res Function(_$_GetMyFellowshipServices) _then)
      : super(_value, (v) => _then(v as _$_GetMyFellowshipServices));

  @override
  _$_GetMyFellowshipServices get _value =>
      super._value as _$_GetMyFellowshipServices;
}

/// @nodoc

class _$_GetMyFellowshipServices implements _GetMyFellowshipServices {
  const _$_GetMyFellowshipServices();

  @override
  String toString() {
    return 'MyFellowshipEvent.getMyFellowshipServices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMyFellowshipServices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyFellowshipServices,
  }) {
    return getMyFellowshipServices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getMyFellowshipServices,
  }) {
    return getMyFellowshipServices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyFellowshipServices,
    required TResult orElse(),
  }) {
    if (getMyFellowshipServices != null) {
      return getMyFellowshipServices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyFellowshipServices value)
        getMyFellowshipServices,
  }) {
    return getMyFellowshipServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMyFellowshipServices value)? getMyFellowshipServices,
  }) {
    return getMyFellowshipServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyFellowshipServices value)? getMyFellowshipServices,
    required TResult orElse(),
  }) {
    if (getMyFellowshipServices != null) {
      return getMyFellowshipServices(this);
    }
    return orElse();
  }
}

abstract class _GetMyFellowshipServices implements MyFellowshipEvent {
  const factory _GetMyFellowshipServices() = _$_GetMyFellowshipServices;
}

/// @nodoc
mixin _$MyFellowshipState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get avgAttendance => throw _privateConstructorUsedError;
  String get avgIncome => throw _privateConstructorUsedError;
  Option<Either<MyFellowshipFailure, List<ServiceObject>>>
      get failureOrServicesOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyFellowshipStateCopyWith<MyFellowshipState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyFellowshipStateCopyWith<$Res> {
  factory $MyFellowshipStateCopyWith(
          MyFellowshipState value, $Res Function(MyFellowshipState) then) =
      _$MyFellowshipStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String avgAttendance,
      String avgIncome,
      Option<Either<MyFellowshipFailure, List<ServiceObject>>>
          failureOrServicesOption});
}

/// @nodoc
class _$MyFellowshipStateCopyWithImpl<$Res>
    implements $MyFellowshipStateCopyWith<$Res> {
  _$MyFellowshipStateCopyWithImpl(this._value, this._then);

  final MyFellowshipState _value;
  // ignore: unused_field
  final $Res Function(MyFellowshipState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? avgAttendance = freezed,
    Object? avgIncome = freezed,
    Object? failureOrServicesOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      avgAttendance: avgAttendance == freezed
          ? _value.avgAttendance
          : avgAttendance // ignore: cast_nullable_to_non_nullable
              as String,
      avgIncome: avgIncome == freezed
          ? _value.avgIncome
          : avgIncome // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrServicesOption: failureOrServicesOption == freezed
          ? _value.failureOrServicesOption
          : failureOrServicesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MyFellowshipFailure, List<ServiceObject>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_MyFellowshipStateCopyWith<$Res>
    implements $MyFellowshipStateCopyWith<$Res> {
  factory _$$_MyFellowshipStateCopyWith(_$_MyFellowshipState value,
          $Res Function(_$_MyFellowshipState) then) =
      __$$_MyFellowshipStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String avgAttendance,
      String avgIncome,
      Option<Either<MyFellowshipFailure, List<ServiceObject>>>
          failureOrServicesOption});
}

/// @nodoc
class __$$_MyFellowshipStateCopyWithImpl<$Res>
    extends _$MyFellowshipStateCopyWithImpl<$Res>
    implements _$$_MyFellowshipStateCopyWith<$Res> {
  __$$_MyFellowshipStateCopyWithImpl(
      _$_MyFellowshipState _value, $Res Function(_$_MyFellowshipState) _then)
      : super(_value, (v) => _then(v as _$_MyFellowshipState));

  @override
  _$_MyFellowshipState get _value => super._value as _$_MyFellowshipState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? avgAttendance = freezed,
    Object? avgIncome = freezed,
    Object? failureOrServicesOption = freezed,
  }) {
    return _then(_$_MyFellowshipState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      avgAttendance: avgAttendance == freezed
          ? _value.avgAttendance
          : avgAttendance // ignore: cast_nullable_to_non_nullable
              as String,
      avgIncome: avgIncome == freezed
          ? _value.avgIncome
          : avgIncome // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrServicesOption: failureOrServicesOption == freezed
          ? _value.failureOrServicesOption
          : failureOrServicesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MyFellowshipFailure, List<ServiceObject>>>,
    ));
  }
}

/// @nodoc

class _$_MyFellowshipState implements _MyFellowshipState {
  const _$_MyFellowshipState(
      {required this.isLoading,
      required this.avgAttendance,
      required this.avgIncome,
      required this.failureOrServicesOption});

  @override
  final bool isLoading;
  @override
  final String avgAttendance;
  @override
  final String avgIncome;
  @override
  final Option<Either<MyFellowshipFailure, List<ServiceObject>>>
      failureOrServicesOption;

  @override
  String toString() {
    return 'MyFellowshipState(isLoading: $isLoading, avgAttendance: $avgAttendance, avgIncome: $avgIncome, failureOrServicesOption: $failureOrServicesOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyFellowshipState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.avgAttendance, avgAttendance) &&
            const DeepCollectionEquality().equals(other.avgIncome, avgIncome) &&
            const DeepCollectionEquality().equals(
                other.failureOrServicesOption, failureOrServicesOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(avgAttendance),
      const DeepCollectionEquality().hash(avgIncome),
      const DeepCollectionEquality().hash(failureOrServicesOption));

  @JsonKey(ignore: true)
  @override
  _$$_MyFellowshipStateCopyWith<_$_MyFellowshipState> get copyWith =>
      __$$_MyFellowshipStateCopyWithImpl<_$_MyFellowshipState>(
          this, _$identity);
}

abstract class _MyFellowshipState implements MyFellowshipState {
  const factory _MyFellowshipState(
      {required final bool isLoading,
      required final String avgAttendance,
      required final String avgIncome,
      required final Option<Either<MyFellowshipFailure, List<ServiceObject>>>
          failureOrServicesOption}) = _$_MyFellowshipState;

  @override
  bool get isLoading;
  @override
  String get avgAttendance;
  @override
  String get avgIncome;
  @override
  Option<Either<MyFellowshipFailure, List<ServiceObject>>>
      get failureOrServicesOption;
  @override
  @JsonKey(ignore: true)
  _$$_MyFellowshipStateCopyWith<_$_MyFellowshipState> get copyWith =>
      throw _privateConstructorUsedError;
}
