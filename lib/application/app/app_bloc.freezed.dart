// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function() rotationsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function()? rotationsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function()? rotationsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_RotationsFetched value) rotationsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_RotationsFetched value)? rotationsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_RotationsFetched value)? rotationsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function() rotationsFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function()? rotationsFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function()? rotationsFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_RotationsFetched value) rotationsFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_RotationsFetched value)? rotationsFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_RotationsFetched value)? rotationsFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ThemeModeToggledCopyWith<$Res> {
  factory _$$_ThemeModeToggledCopyWith(
          _$_ThemeModeToggled value, $Res Function(_$_ThemeModeToggled) then) =
      __$$_ThemeModeToggledCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$_ThemeModeToggledCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_ThemeModeToggled>
    implements _$$_ThemeModeToggledCopyWith<$Res> {
  __$$_ThemeModeToggledCopyWithImpl(
      _$_ThemeModeToggled _value, $Res Function(_$_ThemeModeToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$_ThemeModeToggled(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ThemeModeToggled implements _ThemeModeToggled {
  const _$_ThemeModeToggled({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'AppEvent.themeModeToggled(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeModeToggled &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeModeToggledCopyWith<_$_ThemeModeToggled> get copyWith =>
      __$$_ThemeModeToggledCopyWithImpl<_$_ThemeModeToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function() rotationsFetched,
  }) {
    return themeModeToggled(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function()? rotationsFetched,
  }) {
    return themeModeToggled?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function()? rotationsFetched,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_RotationsFetched value) rotationsFetched,
  }) {
    return themeModeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_RotationsFetched value)? rotationsFetched,
  }) {
    return themeModeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_RotationsFetched value)? rotationsFetched,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled(this);
    }
    return orElse();
  }
}

abstract class _ThemeModeToggled implements AppEvent {
  const factory _ThemeModeToggled({required final ThemeMode themeMode}) =
      _$_ThemeModeToggled;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$_ThemeModeToggledCopyWith<_$_ThemeModeToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RotationsFetchedCopyWith<$Res> {
  factory _$$_RotationsFetchedCopyWith(
          _$_RotationsFetched value, $Res Function(_$_RotationsFetched) then) =
      __$$_RotationsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RotationsFetchedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_RotationsFetched>
    implements _$$_RotationsFetchedCopyWith<$Res> {
  __$$_RotationsFetchedCopyWithImpl(
      _$_RotationsFetched _value, $Res Function(_$_RotationsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RotationsFetched implements _RotationsFetched {
  const _$_RotationsFetched();

  @override
  String toString() {
    return 'AppEvent.rotationsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RotationsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function() rotationsFetched,
  }) {
    return rotationsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function()? rotationsFetched,
  }) {
    return rotationsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function()? rotationsFetched,
    required TResult orElse(),
  }) {
    if (rotationsFetched != null) {
      return rotationsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_RotationsFetched value) rotationsFetched,
  }) {
    return rotationsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_RotationsFetched value)? rotationsFetched,
  }) {
    return rotationsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_RotationsFetched value)? rotationsFetched,
    required TResult orElse(),
  }) {
    if (rotationsFetched != null) {
      return rotationsFetched(this);
    }
    return orElse();
  }
}

abstract class _RotationsFetched implements AppEvent {
  const factory _RotationsFetched() = _$_RotationsFetched;
}

/// @nodoc
mixin _$AppState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  Option<Either<AppFailure, List<RotationObject>>>
      get failureOrRotationsOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      Option<Either<AppFailure, List<RotationObject>>>
          failureOrRotationsOption});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? failureOrRotationsOption = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      failureOrRotationsOption: null == failureOrRotationsOption
          ? _value.failureOrRotationsOption
          : failureOrRotationsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<RotationObject>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode themeMode,
      Option<Either<AppFailure, List<RotationObject>>>
          failureOrRotationsOption});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? failureOrRotationsOption = null,
  }) {
    return _then(_$_AppState(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      failureOrRotationsOption: null == failureOrRotationsOption
          ? _value.failureOrRotationsOption
          : failureOrRotationsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<RotationObject>>>,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {required this.themeMode, required this.failureOrRotationsOption});

  @override
  final ThemeMode themeMode;
  @override
  final Option<Either<AppFailure, List<RotationObject>>>
      failureOrRotationsOption;

  @override
  String toString() {
    return 'AppState(themeMode: $themeMode, failureOrRotationsOption: $failureOrRotationsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(
                    other.failureOrRotationsOption, failureOrRotationsOption) ||
                other.failureOrRotationsOption == failureOrRotationsOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, themeMode, failureOrRotationsOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final ThemeMode themeMode,
      required final Option<Either<AppFailure, List<RotationObject>>>
          failureOrRotationsOption}) = _$_AppState;

  @override
  ThemeMode get themeMode;
  @override
  Option<Either<AppFailure, List<RotationObject>>> get failureOrRotationsOption;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
