// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$FellowshipModelCopyWithImpl<$Res>;
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
class _$FellowshipModelCopyWithImpl<$Res>
    implements $FellowshipModelCopyWith<$Res> {
  _$FellowshipModelCopyWithImpl(this._value, this._then);

  final FellowshipModel _value;
  // ignore: unused_field
  final $Res Function(FellowshipModel) _then;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? leader = freezed,
    Object? constituency = freezed,
    Object? bacenta = freezed,
  }) {
    return _then(_value.copyWith(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leader: leader == freezed
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as UserModel,
      constituency: constituency == freezed
          ? _value.constituency
          : constituency // ignore: cast_nullable_to_non_nullable
              as ConstituencyModel,
      bacenta: bacenta == freezed
          ? _value.bacenta
          : bacenta // ignore: cast_nullable_to_non_nullable
              as BacentaModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get leader {
    return $UserModelCopyWith<$Res>(_value.leader, (value) {
      return _then(_value.copyWith(leader: value));
    });
  }

  @override
  $ConstituencyModelCopyWith<$Res> get constituency {
    return $ConstituencyModelCopyWith<$Res>(_value.constituency, (value) {
      return _then(_value.copyWith(constituency: value));
    });
  }

  @override
  $BacentaModelCopyWith<$Res> get bacenta {
    return $BacentaModelCopyWith<$Res>(_value.bacenta, (value) {
      return _then(_value.copyWith(bacenta: value));
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
    extends _$FellowshipModelCopyWithImpl<$Res>
    implements _$$_FellowshipModelCopyWith<$Res> {
  __$$_FellowshipModelCopyWithImpl(
      _$_FellowshipModel _value, $Res Function(_$_FellowshipModel) _then)
      : super(_value, (v) => _then(v as _$_FellowshipModel));

  @override
  _$_FellowshipModel get _value => super._value as _$_FellowshipModel;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? leader = freezed,
    Object? constituency = freezed,
    Object? bacenta = freezed,
  }) {
    return _then(_$_FellowshipModel(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      leader: leader == freezed
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as UserModel,
      constituency: constituency == freezed
          ? _value.constituency
          : constituency // ignore: cast_nullable_to_non_nullable
              as ConstituencyModel,
      bacenta: bacenta == freezed
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
      {required this.objectId,
      required this.name,
      required this.leader,
      required this.constituency,
      required this.bacenta});

  factory _$_FellowshipModel.fromJson(Map<String, dynamic> json) =>
      _$$_FellowshipModelFromJson(json);

  @override
  final String objectId;
  @override
  final String name;
  @override
  final UserModel leader;
  @override
  final ConstituencyModel constituency;
  @override
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
            const DeepCollectionEquality().equals(other.objectId, objectId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.leader, leader) &&
            const DeepCollectionEquality()
                .equals(other.constituency, constituency) &&
            const DeepCollectionEquality().equals(other.bacenta, bacenta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(objectId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(leader),
      const DeepCollectionEquality().hash(constituency),
      const DeepCollectionEquality().hash(bacenta));

  @JsonKey(ignore: true)
  @override
  _$$_FellowshipModelCopyWith<_$_FellowshipModel> get copyWith =>
      __$$_FellowshipModelCopyWithImpl<_$_FellowshipModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FellowshipModelToJson(this);
  }
}

abstract class _FellowshipModel implements FellowshipModel {
  const factory _FellowshipModel(
      {required final String objectId,
      required final String name,
      required final UserModel leader,
      required final ConstituencyModel constituency,
      required final BacentaModel bacenta}) = _$_FellowshipModel;

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
