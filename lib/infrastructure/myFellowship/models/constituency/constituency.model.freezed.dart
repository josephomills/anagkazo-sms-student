// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'constituency.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConstituencyModel _$ConstituencyModelFromJson(Map<String, dynamic> json) {
  return _ConstituencyModel.fromJson(json);
}

/// @nodoc
mixin _$ConstituencyModel {
  String get objectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  UserModel get leader => throw _privateConstructorUsedError;
  List<BacentaModel>? get bacentas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstituencyModelCopyWith<ConstituencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstituencyModelCopyWith<$Res> {
  factory $ConstituencyModelCopyWith(
          ConstituencyModel value, $Res Function(ConstituencyModel) then) =
      _$ConstituencyModelCopyWithImpl<$Res>;
  $Res call(
      {String objectId,
      String name,
      UserModel leader,
      List<BacentaModel>? bacentas});

  $UserModelCopyWith<$Res> get leader;
}

/// @nodoc
class _$ConstituencyModelCopyWithImpl<$Res>
    implements $ConstituencyModelCopyWith<$Res> {
  _$ConstituencyModelCopyWithImpl(this._value, this._then);

  final ConstituencyModel _value;
  // ignore: unused_field
  final $Res Function(ConstituencyModel) _then;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? leader = freezed,
    Object? bacentas = freezed,
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
      bacentas: bacentas == freezed
          ? _value.bacentas
          : bacentas // ignore: cast_nullable_to_non_nullable
              as List<BacentaModel>?,
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
abstract class _$$_ConstituencyModelCopyWith<$Res>
    implements $ConstituencyModelCopyWith<$Res> {
  factory _$$_ConstituencyModelCopyWith(_$_ConstituencyModel value,
          $Res Function(_$_ConstituencyModel) then) =
      __$$_ConstituencyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String objectId,
      String name,
      UserModel leader,
      List<BacentaModel>? bacentas});

  @override
  $UserModelCopyWith<$Res> get leader;
}

/// @nodoc
class __$$_ConstituencyModelCopyWithImpl<$Res>
    extends _$ConstituencyModelCopyWithImpl<$Res>
    implements _$$_ConstituencyModelCopyWith<$Res> {
  __$$_ConstituencyModelCopyWithImpl(
      _$_ConstituencyModel _value, $Res Function(_$_ConstituencyModel) _then)
      : super(_value, (v) => _then(v as _$_ConstituencyModel));

  @override
  _$_ConstituencyModel get _value => super._value as _$_ConstituencyModel;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? leader = freezed,
    Object? bacentas = freezed,
  }) {
    return _then(_$_ConstituencyModel(
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
      bacentas: bacentas == freezed
          ? _value._bacentas
          : bacentas // ignore: cast_nullable_to_non_nullable
              as List<BacentaModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConstituencyModel implements _ConstituencyModel {
  const _$_ConstituencyModel(
      {this.objectId = "",
      this.name = "",
      this.leader = const UserModel(),
      final List<BacentaModel>? bacentas})
      : _bacentas = bacentas;

  factory _$_ConstituencyModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConstituencyModelFromJson(json);

  @override
  @JsonKey()
  final String objectId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final UserModel leader;
  final List<BacentaModel>? _bacentas;
  @override
  List<BacentaModel>? get bacentas {
    final value = _bacentas;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConstituencyModel(objectId: $objectId, name: $name, leader: $leader, bacentas: $bacentas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConstituencyModel &&
            const DeepCollectionEquality().equals(other.objectId, objectId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.leader, leader) &&
            const DeepCollectionEquality().equals(other._bacentas, _bacentas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(objectId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(leader),
      const DeepCollectionEquality().hash(_bacentas));

  @JsonKey(ignore: true)
  @override
  _$$_ConstituencyModelCopyWith<_$_ConstituencyModel> get copyWith =>
      __$$_ConstituencyModelCopyWithImpl<_$_ConstituencyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConstituencyModelToJson(this);
  }
}

abstract class _ConstituencyModel implements ConstituencyModel {
  const factory _ConstituencyModel(
      {final String objectId,
      final String name,
      final UserModel leader,
      final List<BacentaModel>? bacentas}) = _$_ConstituencyModel;

  factory _ConstituencyModel.fromJson(Map<String, dynamic> json) =
      _$_ConstituencyModel.fromJson;

  @override
  String get objectId;
  @override
  String get name;
  @override
  UserModel get leader;
  @override
  List<BacentaModel>? get bacentas;
  @override
  @JsonKey(ignore: true)
  _$$_ConstituencyModelCopyWith<_$_ConstituencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
