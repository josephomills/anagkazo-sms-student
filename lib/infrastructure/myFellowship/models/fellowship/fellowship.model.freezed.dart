// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fellowship.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FellowshipModel _$FellowshipModelFromJson(Map<String, dynamic> json) {
  return _FellowshipModel.fromJson(json);
}

/// @nodoc
mixin _$FellowshipModel {
  String get objectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  UserModel get leader => throw _privateConstructorUsedError;
  ConstituencyModel get constituency => throw _privateConstructorUsedError;
  BacentaModel get bacenta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FellowshipModelCopyWith<FellowshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FellowshipModelCopyWith<$Res> {
  factory $FellowshipModelCopyWith(
          FellowshipModel value, $Res Function(FellowshipModel) then) =
      _$FellowshipModelCopyWithImpl<$Res, FellowshipModel>;
  @useResult
  $Res call(
      {String objectId,
      String name,
      UserModel leader,
      ConstituencyModel constituency,
      BacentaModel bacenta});

  $UserModelCopyWith<$Res> get leader;
  $ConstituencyModelCopyWith<$Res> get constituency;
  $BacentaModelCopyWith<$Res> get bacenta;
}

/// @nodoc
class _$FellowshipModelCopyWithImpl<$Res, $Val extends FellowshipModel>
    implements $FellowshipModelCopyWith<$Res> {
  _$FellowshipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? name = null,
    Object? leader = null,
    Object? constituency = null,
    Object? bacenta = null,
  }) {
    return _then(_value.copyWith(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as UserModel,
      constituency: null == constituency
          ? _value.constituency
          : constituency // ignore: cast_nullable_to_non_nullable
              as ConstituencyModel,
      bacenta: null == bacenta
          ? _value.bacenta
          : bacenta // ignore: cast_nullable_to_non_nullable
              as BacentaModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get leader {
    return $UserModelCopyWith<$Res>(_value.leader, (value) {
      return _then(_value.copyWith(leader: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstituencyModelCopyWith<$Res> get constituency {
    return $ConstituencyModelCopyWith<$Res>(_value.constituency, (value) {
      return _then(_value.copyWith(constituency: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BacentaModelCopyWith<$Res> get bacenta {
    return $BacentaModelCopyWith<$Res>(_value.bacenta, (value) {
      return _then(_value.copyWith(bacenta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FellowshipModelCopyWith<$Res>
    implements $FellowshipModelCopyWith<$Res> {
  factory _$$_FellowshipModelCopyWith(
          _$_FellowshipModel value, $Res Function(_$_FellowshipModel) then) =
      __$$_FellowshipModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String objectId,
      String name,
      UserModel leader,
      ConstituencyModel constituency,
      BacentaModel bacenta});

  @override
  $UserModelCopyWith<$Res> get leader;
  @override
  $ConstituencyModelCopyWith<$Res> get constituency;
  @override
  $BacentaModelCopyWith<$Res> get bacenta;
}

/// @nodoc
class __$$_FellowshipModelCopyWithImpl<$Res>
    extends _$FellowshipModelCopyWithImpl<$Res, _$_FellowshipModel>
    implements _$$_FellowshipModelCopyWith<$Res> {
  __$$_FellowshipModelCopyWithImpl(
      _$_FellowshipModel _value, $Res Function(_$_FellowshipModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? name = null,
    Object? leader = null,
    Object? constituency = null,
    Object? bacenta = null,
  }) {
    return _then(_$_FellowshipModel(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as UserModel,
      constituency: null == constituency
          ? _value.constituency
          : constituency // ignore: cast_nullable_to_non_nullable
              as ConstituencyModel,
      bacenta: null == bacenta
          ? _value.bacenta
          : bacenta // ignore: cast_nullable_to_non_nullable
              as BacentaModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FellowshipModel implements _FellowshipModel {
  const _$_FellowshipModel(
      {this.objectId = "",
      this.name = "",
      this.leader = const UserModel(),
      this.constituency = const ConstituencyModel(),
      this.bacenta = const BacentaModel()});

  factory _$_FellowshipModel.fromJson(Map<String, dynamic> json) =>
      _$$_FellowshipModelFromJson(json);

  @override
  @JsonKey()
  final String objectId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final UserModel leader;
  @override
  @JsonKey()
  final ConstituencyModel constituency;
  @override
  @JsonKey()
  final BacentaModel bacenta;

  @override
  String toString() {
    return 'FellowshipModel(objectId: $objectId, name: $name, leader: $leader, constituency: $constituency, bacenta: $bacenta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FellowshipModel &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.leader, leader) || other.leader == leader) &&
            (identical(other.constituency, constituency) ||
                other.constituency == constituency) &&
            (identical(other.bacenta, bacenta) || other.bacenta == bacenta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, objectId, name, leader, constituency, bacenta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FellowshipModelCopyWith<_$_FellowshipModel> get copyWith =>
      __$$_FellowshipModelCopyWithImpl<_$_FellowshipModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FellowshipModelToJson(
      this,
    );
  }
}

abstract class _FellowshipModel implements FellowshipModel {
  const factory _FellowshipModel(
      {final String objectId,
      final String name,
      final UserModel leader,
      final ConstituencyModel constituency,
      final BacentaModel bacenta}) = _$_FellowshipModel;

  factory _FellowshipModel.fromJson(Map<String, dynamic> json) =
      _$_FellowshipModel.fromJson;

  @override
  String get objectId;
  @override
  String get name;
  @override
  UserModel get leader;
  @override
  ConstituencyModel get constituency;
  @override
  BacentaModel get bacenta;
  @override
  @JsonKey(ignore: true)
  _$$_FellowshipModelCopyWith<_$_FellowshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}
