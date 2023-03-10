// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    required TResult Function() scanConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanEventCopyWith<$Res> {
  factory $ScanEventCopyWith(ScanEvent value, $Res Function(ScanEvent) then) =
      _$ScanEventCopyWithImpl<$Res, ScanEvent>;
}

/// @nodoc
class _$ScanEventCopyWithImpl<$Res, $Val extends ScanEvent>
    implements $ScanEventCopyWith<$Res> {
  _$ScanEventCopyWithImpl(this._value, this._then);

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
    extends _$ScanEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
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
    required TResult Function() scanConfirmed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
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
    required TResult Function(_ScanConfirmed value) scanConfirmed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
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
  @useResult
  $Res call({Map<String, dynamic> qr});
}

/// @nodoc
class __$$_ScanDetectedCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$_ScanDetected>
    implements _$$_ScanDetectedCopyWith<$Res> {
  __$$_ScanDetectedCopyWithImpl(
      _$_ScanDetected _value, $Res Function(_$_ScanDetected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qr = null,
  }) {
    return _then(_$_ScanDetected(
      qr: null == qr
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
    if (_qr is EqualUnmodifiableMapView) return _qr;
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
  @pragma('vm:prefer-inline')
  _$$_ScanDetectedCopyWith<_$_ScanDetected> get copyWith =>
      __$$_ScanDetectedCopyWithImpl<_$_ScanDetected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
  }) {
    return scanDetected(qr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
  }) {
    return scanDetected?.call(qr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
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
    required TResult Function(_ScanConfirmed value) scanConfirmed,
  }) {
    return scanDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
  }) {
    return scanDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
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
abstract class _$$_ScanConfirmedCopyWith<$Res> {
  factory _$$_ScanConfirmedCopyWith(
          _$_ScanConfirmed value, $Res Function(_$_ScanConfirmed) then) =
      __$$_ScanConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ScanConfirmedCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$_ScanConfirmed>
    implements _$$_ScanConfirmedCopyWith<$Res> {
  __$$_ScanConfirmedCopyWithImpl(
      _$_ScanConfirmed _value, $Res Function(_$_ScanConfirmed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ScanConfirmed implements _ScanConfirmed {
  const _$_ScanConfirmed();

  @override
  String toString() {
    return 'ScanEvent.scanConfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ScanConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
  }) {
    return scanConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
  }) {
    return scanConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    required TResult orElse(),
  }) {
    if (scanConfirmed != null) {
      return scanConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
  }) {
    return scanConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
  }) {
    return scanConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    required TResult orElse(),
  }) {
    if (scanConfirmed != null) {
      return scanConfirmed(this);
    }
    return orElse();
  }
}

abstract class _ScanConfirmed implements ScanEvent {
  const factory _ScanConfirmed() = _$_ScanConfirmed;
}

/// @nodoc
mixin _$ScanState {
  bool get isScanning => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isConfirming => throw _privateConstructorUsedError;
  DateTime? get scannedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get qr => throw _privateConstructorUsedError;
  Option<EventObject> get eventOption => throw _privateConstructorUsedError;
  Option<Either<ScanFailure, ScanObject>> get failureOrScanOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanStateCopyWith<ScanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res, ScanState>;
  @useResult
  $Res call(
      {bool isScanning,
      bool isLoading,
      bool isConfirming,
      DateTime? scannedAt,
      Map<String, dynamic>? qr,
      Option<EventObject> eventOption,
      Option<Either<ScanFailure, ScanObject>> failureOrScanOption});
}

/// @nodoc
class _$ScanStateCopyWithImpl<$Res, $Val extends ScanState>
    implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScanning = null,
    Object? isLoading = null,
    Object? isConfirming = null,
    Object? scannedAt = freezed,
    Object? qr = freezed,
    Object? eventOption = null,
    Object? failureOrScanOption = null,
  }) {
    return _then(_value.copyWith(
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirming: null == isConfirming
          ? _value.isConfirming
          : isConfirming // ignore: cast_nullable_to_non_nullable
              as bool,
      scannedAt: freezed == scannedAt
          ? _value.scannedAt
          : scannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qr: freezed == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      eventOption: null == eventOption
          ? _value.eventOption
          : eventOption // ignore: cast_nullable_to_non_nullable
              as Option<EventObject>,
      failureOrScanOption: null == failureOrScanOption
          ? _value.failureOrScanOption
          : failureOrScanOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ScanFailure, ScanObject>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScanStateCopyWith<$Res> implements $ScanStateCopyWith<$Res> {
  factory _$$_ScanStateCopyWith(
          _$_ScanState value, $Res Function(_$_ScanState) then) =
      __$$_ScanStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isScanning,
      bool isLoading,
      bool isConfirming,
      DateTime? scannedAt,
      Map<String, dynamic>? qr,
      Option<EventObject> eventOption,
      Option<Either<ScanFailure, ScanObject>> failureOrScanOption});
}

/// @nodoc
class __$$_ScanStateCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$_ScanState>
    implements _$$_ScanStateCopyWith<$Res> {
  __$$_ScanStateCopyWithImpl(
      _$_ScanState _value, $Res Function(_$_ScanState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScanning = null,
    Object? isLoading = null,
    Object? isConfirming = null,
    Object? scannedAt = freezed,
    Object? qr = freezed,
    Object? eventOption = null,
    Object? failureOrScanOption = null,
  }) {
    return _then(_$_ScanState(
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirming: null == isConfirming
          ? _value.isConfirming
          : isConfirming // ignore: cast_nullable_to_non_nullable
              as bool,
      scannedAt: freezed == scannedAt
          ? _value.scannedAt
          : scannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qr: freezed == qr
          ? _value._qr
          : qr // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      eventOption: null == eventOption
          ? _value.eventOption
          : eventOption // ignore: cast_nullable_to_non_nullable
              as Option<EventObject>,
      failureOrScanOption: null == failureOrScanOption
          ? _value.failureOrScanOption
          : failureOrScanOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ScanFailure, ScanObject>>,
    ));
  }
}

/// @nodoc

class _$_ScanState implements _ScanState {
  const _$_ScanState(
      {required this.isScanning,
      required this.isLoading,
      required this.isConfirming,
      this.scannedAt,
      final Map<String, dynamic>? qr,
      required this.eventOption,
      required this.failureOrScanOption})
      : _qr = qr;

  @override
  final bool isScanning;
  @override
  final bool isLoading;
  @override
  final bool isConfirming;
  @override
  final DateTime? scannedAt;
  final Map<String, dynamic>? _qr;
  @override
  Map<String, dynamic>? get qr {
    final value = _qr;
    if (value == null) return null;
    if (_qr is EqualUnmodifiableMapView) return _qr;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Option<EventObject> eventOption;
  @override
  final Option<Either<ScanFailure, ScanObject>> failureOrScanOption;

  @override
  String toString() {
    return 'ScanState(isScanning: $isScanning, isLoading: $isLoading, isConfirming: $isConfirming, scannedAt: $scannedAt, qr: $qr, eventOption: $eventOption, failureOrScanOption: $failureOrScanOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScanState &&
            (identical(other.isScanning, isScanning) ||
                other.isScanning == isScanning) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isConfirming, isConfirming) ||
                other.isConfirming == isConfirming) &&
            (identical(other.scannedAt, scannedAt) ||
                other.scannedAt == scannedAt) &&
            const DeepCollectionEquality().equals(other._qr, _qr) &&
            (identical(other.eventOption, eventOption) ||
                other.eventOption == eventOption) &&
            (identical(other.failureOrScanOption, failureOrScanOption) ||
                other.failureOrScanOption == failureOrScanOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isScanning,
      isLoading,
      isConfirming,
      scannedAt,
      const DeepCollectionEquality().hash(_qr),
      eventOption,
      failureOrScanOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScanStateCopyWith<_$_ScanState> get copyWith =>
      __$$_ScanStateCopyWithImpl<_$_ScanState>(this, _$identity);
}

abstract class _ScanState implements ScanState {
  const factory _ScanState(
      {required final bool isScanning,
      required final bool isLoading,
      required final bool isConfirming,
      final DateTime? scannedAt,
      final Map<String, dynamic>? qr,
      required final Option<EventObject> eventOption,
      required final Option<Either<ScanFailure, ScanObject>>
          failureOrScanOption}) = _$_ScanState;

  @override
  bool get isScanning;
  @override
  bool get isLoading;
  @override
  bool get isConfirming;
  @override
  DateTime? get scannedAt;
  @override
  Map<String, dynamic>? get qr;
  @override
  Option<EventObject> get eventOption;
  @override
  Option<Either<ScanFailure, ScanObject>> get failureOrScanOption;
  @override
  @JsonKey(ignore: true)
  _$$_ScanStateCopyWith<_$_ScanState> get copyWith =>
      throw _privateConstructorUsedError;
}
