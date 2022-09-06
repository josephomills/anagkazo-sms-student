// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scan.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScanModel _$ScanModelFromJson(Map<String, dynamic> json) {
  return _ScanModel.fromJson(json);
}

/// @nodoc
mixin _$ScanModel {
  String get objectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanModelCopyWith<ScanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanModelCopyWith<$Res> {
  factory $ScanModelCopyWith(ScanModel value, $Res Function(ScanModel) then) =
      _$ScanModelCopyWithImpl<$Res>;
  $Res call({String objectId});
}

/// @nodoc
class _$ScanModelCopyWithImpl<$Res> implements $ScanModelCopyWith<$Res> {
  _$ScanModelCopyWithImpl(this._value, this._then);

  final ScanModel _value;
  // ignore: unused_field
  final $Res Function(ScanModel) _then;

  @override
  $Res call({
    Object? objectId = freezed,
  }) {
    return _then(_value.copyWith(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ScanModelCopyWith<$Res> implements $ScanModelCopyWith<$Res> {
  factory _$$_ScanModelCopyWith(
          _$_ScanModel value, $Res Function(_$_ScanModel) then) =
      __$$_ScanModelCopyWithImpl<$Res>;
  @override
  $Res call({String objectId});
}

/// @nodoc
class __$$_ScanModelCopyWithImpl<$Res> extends _$ScanModelCopyWithImpl<$Res>
    implements _$$_ScanModelCopyWith<$Res> {
  __$$_ScanModelCopyWithImpl(
      _$_ScanModel _value, $Res Function(_$_ScanModel) _then)
      : super(_value, (v) => _then(v as _$_ScanModel));

  @override
  _$_ScanModel get _value => super._value as _$_ScanModel;

  @override
  $Res call({
    Object? objectId = freezed,
  }) {
    return _then(_$_ScanModel(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScanModel implements _ScanModel {
  const _$_ScanModel({required this.objectId});

  factory _$_ScanModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScanModelFromJson(json);

  @override
  final String objectId;

  @override
  String toString() {
    return 'ScanModel(objectId: $objectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScanModel &&
            const DeepCollectionEquality().equals(other.objectId, objectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(objectId));

  @JsonKey(ignore: true)
  @override
  _$$_ScanModelCopyWith<_$_ScanModel> get copyWith =>
      __$$_ScanModelCopyWithImpl<_$_ScanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScanModelToJson(this);
  }
}

abstract class _ScanModel implements ScanModel {
  const factory _ScanModel({required final String objectId}) = _$_ScanModel;

  factory _ScanModel.fromJson(Map<String, dynamic> json) =
      _$_ScanModel.fromJson;

  @override
  String get objectId;
  @override
  @JsonKey(ignore: true)
  _$$_ScanModelCopyWith<_$_ScanModel> get copyWith =>
      throw _privateConstructorUsedError;
}
