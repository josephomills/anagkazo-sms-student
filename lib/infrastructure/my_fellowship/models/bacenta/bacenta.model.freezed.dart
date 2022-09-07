// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bacenta.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BacentaModel _$BacentaModelFromJson(Map<String, dynamic> json) {
  return _BacentaModel.fromJson(json);
}

/// @nodoc
mixin _$BacentaModel {
  String get objectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  UserModel get leader => throw _privateConstructorUsedError;
  List<FellowshipModel> get fellowships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BacentaModelCopyWith<BacentaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BacentaModelCopyWith<$Res> {
  factory $BacentaModelCopyWith(
          BacentaModel value, $Res Function(BacentaModel) then) =
      _$BacentaModelCopyWithImpl<$Res>;
  $Res call(
      {String objectId,
      String name,
      UserModel leader,
      List<FellowshipModel> fellowships});

  $UserModelCopyWith<$Res> get leader;
}

/// @nodoc
class _$BacentaModelCopyWithImpl<$Res> implements $BacentaModelCopyWith<$Res> {
  _$BacentaModelCopyWithImpl(this._value, this._then);

  final BacentaModel _value;
  // ignore: unused_field
  final $Res Function(BacentaModel) _then;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? leader = freezed,
    Object? fellowships = freezed,
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
      fellowships: fellowships == freezed
          ? _value.fellowships
          : fellowships // ignore: cast_nullable_to_non_nullable
              as List<FellowshipModel>,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get leader {
    return $UserModelCopyWith<$Res>(_value.leader, (value) {
      return _then(_value.copyWith(leader: value));
    });
  }
}

/// @nodoc
abstract class _$$_BacentaModelCopyWith<$Res>
    implements $BacentaModelCopyWith<$Res> {
  factory _$$_BacentaModelCopyWith(
          _$_BacentaModel value, $Res Function(_$_BacentaModel) then) =
      __$$_BacentaModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String objectId,
      String name,
      UserModel leader,
      List<FellowshipModel> fellowships});

  @override
  $UserModelCopyWith<$Res> get leader;
}

/// @nodoc
class __$$_BacentaModelCopyWithImpl<$Res>
    extends _$BacentaModelCopyWithImpl<$Res>
    implements _$$_BacentaModelCopyWith<$Res> {
  __$$_BacentaModelCopyWithImpl(
      _$_BacentaModel _value, $Res Function(_$_BacentaModel) _then)
      : super(_value, (v) => _then(v as _$_BacentaModel));

  @override
  _$_BacentaModel get _value => super._value as _$_BacentaModel;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? leader = freezed,
    Object? fellowships = freezed,
  }) {
    return _then(_$_BacentaModel(
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
      fellowships: fellowships == freezed
          ? _value._fellowships
          : fellowships // ignore: cast_nullable_to_non_nullable
              as List<FellowshipModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BacentaModel implements _BacentaModel {
  const _$_BacentaModel(
      {required this.objectId,
      required this.name,
      required this.leader,
      required final List<FellowshipModel> fellowships})
      : _fellowships = fellowships;

  factory _$_BacentaModel.fromJson(Map<String, dynamic> json) =>
      _$$_BacentaModelFromJson(json);

  @override
  final String objectId;
  @override
  final String name;
  @override
  final UserModel leader;
  final List<FellowshipModel> _fellowships;
  @override
  List<FellowshipModel> get fellowships {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fellowships);
  }

  @override
  String toString() {
    return 'BacentaModel(objectId: $objectId, name: $name, leader: $leader, fellowships: $fellowships)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BacentaModel &&
            const DeepCollectionEquality().equals(other.objectId, objectId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.leader, leader) &&
            const DeepCollectionEquality()
                .equals(other._fellowships, _fellowships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(objectId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(leader),
      const DeepCollectionEquality().hash(_fellowships));

  @JsonKey(ignore: true)
  @override
  _$$_BacentaModelCopyWith<_$_BacentaModel> get copyWith =>
      __$$_BacentaModelCopyWithImpl<_$_BacentaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BacentaModelToJson(this);
  }
}

abstract class _BacentaModel implements BacentaModel {
  const factory _BacentaModel(
      {required final String objectId,
      required final String name,
      required final UserModel leader,
      required final List<FellowshipModel> fellowships}) = _$_BacentaModel;

  factory _BacentaModel.fromJson(Map<String, dynamic> json) =
      _$_BacentaModel.fromJson;

  @override
  String get objectId;
  @override
  String get name;
  @override
  UserModel get leader;
  @override
  List<FellowshipModel> get fellowships;
  @override
  @JsonKey(ignore: true)
  _$$_BacentaModelCopyWith<_$_BacentaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
