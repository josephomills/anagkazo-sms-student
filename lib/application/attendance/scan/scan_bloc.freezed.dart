// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanEventCopyWith<$Res> {
  factory $ScanEventCopyWith(ScanEvent value, $Res Function(ScanEvent) then) =
      _$ScanEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScanEventCopyWithImpl<$Res> implements $ScanEventCopyWith<$Res> {
  _$ScanEventCopyWithImpl(this._value, this._then);

  final ScanEvent _value;
  // ignore: unused_field
  final $Res Function(ScanEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$ScanEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ScanEvent.started()';
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
    required TResult Function(Map<String, dynamic> qr) scanDetected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
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
    required TResult Function(_ScanDetected value) scanDetected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ScanEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ScanDetectedCopyWith<$Res> {
  factory _$$_ScanDetectedCopyWith(
          _$_ScanDetected value, $Res Function(_$_ScanDetected) then) =
      __$$_ScanDetectedCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> qr});
}

/// @nodoc
class __$$_ScanDetectedCopyWithImpl<$Res> extends _$ScanEventCopyWithImpl<$Res>
    implements _$$_ScanDetectedCopyWith<$Res> {
  __$$_ScanDetectedCopyWithImpl(
      _$_ScanDetected _value, $Res Function(_$_ScanDetected) _then)
      : super(_value, (v) => _then(v as _$_ScanDetected));

  @override
  _$_ScanDetected get _value => super._value as _$_ScanDetected;

  @override
  $Res call({
    Object? qr = freezed,
  }) {
    return _then(_$_ScanDetected(
      qr: qr == freezed
          ? _value._qr
          : qr // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_ScanDetected implements _ScanDetected {
  const _$_ScanDetected({required final Map<String, dynamic> qr}) : _qr = qr;

  final Map<String, dynamic> _qr;
  @override
  Map<String, dynamic> get qr {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_qr);
  }

  @override
  String toString() {
    return 'ScanEvent.scanDetected(qr: $qr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScanDetected &&
            const DeepCollectionEquality().equals(other._qr, _qr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_qr));

  @JsonKey(ignore: true)
  @override
  _$$_ScanDetectedCopyWith<_$_ScanDetected> get copyWith =>
      __$$_ScanDetectedCopyWithImpl<_$_ScanDetected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
  }) {
    return scanDetected(qr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
  }) {
    return scanDetected?.call(qr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    required TResult orElse(),
  }) {
    if (scanDetected != null) {
      return scanDetected(qr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
  }) {
    return scanDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
  }) {
    return scanDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    required TResult orElse(),
  }) {
    if (scanDetected != null) {
      return scanDetected(this);
    }
    return orElse();
  }
}

abstract class _ScanDetected implements ScanEvent {
  const factory _ScanDetected({required final Map<String, dynamic> qr}) =
      _$_ScanDetected;

  Map<String, dynamic> get qr;
  @JsonKey(ignore: true)
  _$$_ScanDetectedCopyWith<_$_ScanDetected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScanState {
  bool get isScanning => throw _privateConstructorUsedError;
  Option<EventObject> get eventOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanStateCopyWith<ScanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res>;
  $Res call({bool isScanning, Option<EventObject> eventOption});
}

/// @nodoc
class _$ScanStateCopyWithImpl<$Res> implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  final ScanState _value;
  // ignore: unused_field
  final $Res Function(ScanState) _then;

  @override
  $Res call({
    Object? isScanning = freezed,
    Object? eventOption = freezed,
  }) {
    return _then(_value.copyWith(
      isScanning: isScanning == freezed
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      eventOption: eventOption == freezed
          ? _value.eventOption
          : eventOption // ignore: cast_nullable_to_non_nullable
              as Option<EventObject>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $ScanStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isScanning, Option<EventObject> eventOption});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$ScanStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? isScanning = freezed,
    Object? eventOption = freezed,
  }) {
    return _then(_$_Initial(
      isScanning: isScanning == freezed
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      eventOption: eventOption == freezed
          ? _value.eventOption
          : eventOption // ignore: cast_nullable_to_non_nullable
              as Option<EventObject>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.isScanning, required this.eventOption});

  @override
  final bool isScanning;
  @override
  final Option<EventObject> eventOption;

  @override
  String toString() {
    return 'ScanState(isScanning: $isScanning, eventOption: $eventOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.isScanning, isScanning) &&
            const DeepCollectionEquality()
                .equals(other.eventOption, eventOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isScanning),
      const DeepCollectionEquality().hash(eventOption));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ScanState {
  const factory _Initial(
      {required final bool isScanning,
      required final Option<EventObject> eventOption}) = _$_Initial;

  @override
  bool get isScanning;
  @override
  Option<EventObject> get eventOption;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
