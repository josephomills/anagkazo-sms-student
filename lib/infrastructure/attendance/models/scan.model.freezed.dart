// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$ScanModelCopyWithImpl<$Res, ScanModel>;
  @useResult
  $Res call({String objectId});
}

/// @nodoc
class _$ScanModelCopyWithImpl<$Res, $Val extends ScanModel>
    implements $ScanModelCopyWith<$Res> {
  _$ScanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
  }) {
    return _then(_value.copyWith(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScanModelCopyWith<$Res> implements $ScanModelCopyWith<$Res> {
  factory _$$_ScanModelCopyWith(
          _$_ScanModel value, $Res Function(_$_ScanModel) then) =
      __$$_ScanModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String objectId});
}

/// @nodoc
class __$$_ScanModelCopyWithImpl<$Res>
    extends _$ScanModelCopyWithImpl<$Res, _$_ScanModel>
    implements _$$_ScanModelCopyWith<$Res> {
  __$$_ScanModelCopyWithImpl(
      _$_ScanModel _value, $Res Function(_$_ScanModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
  }) {
    return _then(_$_ScanModel(
      objectId: null == objectId
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
            (identical(other.objectId, objectId) ||
                other.objectId == objectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, objectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScanModelCopyWith<_$_ScanModel> get copyWith =>
      __$$_ScanModelCopyWithImpl<_$_ScanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScanModelToJson(
      this,
    );
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
