// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'year_group.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YearGroup _$YearGroupFromJson(Map<String, dynamic> json) {
  return _YearGroup.fromJson(json);
}

/// @nodoc
mixin _$YearGroup {
  String get objectId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get admissionDate => throw _privateConstructorUsedError;
  List<UserModel> get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YearGroupCopyWith<YearGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearGroupCopyWith<$Res> {
  factory $YearGroupCopyWith(YearGroup value, $Res Function(YearGroup) then) =
      _$YearGroupCopyWithImpl<$Res>;
  $Res call(
      {String objectId,
      String name,
      DateTime admissionDate,
      List<UserModel> students});
}

/// @nodoc
class _$YearGroupCopyWithImpl<$Res> implements $YearGroupCopyWith<$Res> {
  _$YearGroupCopyWithImpl(this._value, this._then);

  final YearGroup _value;
  // ignore: unused_field
  final $Res Function(YearGroup) _then;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? admissionDate = freezed,
    Object? students = freezed,
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
      admissionDate: admissionDate == freezed
          ? _value.admissionDate
          : admissionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      students: students == freezed
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_YearGroupCopyWith<$Res> implements $YearGroupCopyWith<$Res> {
  factory _$$_YearGroupCopyWith(
          _$_YearGroup value, $Res Function(_$_YearGroup) then) =
      __$$_YearGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {String objectId,
      String name,
      DateTime admissionDate,
      List<UserModel> students});
}

/// @nodoc
class __$$_YearGroupCopyWithImpl<$Res> extends _$YearGroupCopyWithImpl<$Res>
    implements _$$_YearGroupCopyWith<$Res> {
  __$$_YearGroupCopyWithImpl(
      _$_YearGroup _value, $Res Function(_$_YearGroup) _then)
      : super(_value, (v) => _then(v as _$_YearGroup));

  @override
  _$_YearGroup get _value => super._value as _$_YearGroup;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? name = freezed,
    Object? admissionDate = freezed,
    Object? students = freezed,
  }) {
    return _then(_$_YearGroup(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      admissionDate: admissionDate == freezed
          ? _value.admissionDate
          : admissionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      students: students == freezed
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YearGroup implements _YearGroup {
  const _$_YearGroup(
      {required this.objectId,
      required this.name,
      required this.admissionDate,
      required final List<UserModel> students})
      : _students = students;

  factory _$_YearGroup.fromJson(Map<String, dynamic> json) =>
      _$$_YearGroupFromJson(json);

  @override
  final String objectId;
  @override
  final String name;
  @override
  final DateTime admissionDate;
  final List<UserModel> _students;
  @override
  List<UserModel> get students {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'YearGroup(objectId: $objectId, name: $name, admissionDate: $admissionDate, students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YearGroup &&
            const DeepCollectionEquality().equals(other.objectId, objectId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.admissionDate, admissionDate) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(objectId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(admissionDate),
      const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  _$$_YearGroupCopyWith<_$_YearGroup> get copyWith =>
      __$$_YearGroupCopyWithImpl<_$_YearGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YearGroupToJson(this);
  }
}

abstract class _YearGroup implements YearGroup {
  const factory _YearGroup(
      {required final String objectId,
      required final String name,
      required final DateTime admissionDate,
      required final List<UserModel> students}) = _$_YearGroup;

  factory _YearGroup.fromJson(Map<String, dynamic> json) =
      _$_YearGroup.fromJson;

  @override
  String get objectId;
  @override
  String get name;
  @override
  DateTime get admissionDate;
  @override
  List<UserModel> get students;
  @override
  @JsonKey(ignore: true)
  _$$_YearGroupCopyWith<_$_YearGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
