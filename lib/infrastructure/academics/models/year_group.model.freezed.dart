// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$YearGroupCopyWithImpl<$Res, YearGroup>;
  @useResult
  $Res call(
      {String objectId,
      String name,
      DateTime admissionDate,
      List<UserModel> students});
}

/// @nodoc
class _$YearGroupCopyWithImpl<$Res, $Val extends YearGroup>
    implements $YearGroupCopyWith<$Res> {
  _$YearGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? name = null,
    Object? admissionDate = null,
    Object? students = null,
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
      admissionDate: null == admissionDate
          ? _value.admissionDate
          : admissionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YearGroupCopyWith<$Res> implements $YearGroupCopyWith<$Res> {
  factory _$$_YearGroupCopyWith(
          _$_YearGroup value, $Res Function(_$_YearGroup) then) =
      __$$_YearGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String objectId,
      String name,
      DateTime admissionDate,
      List<UserModel> students});
}

/// @nodoc
class __$$_YearGroupCopyWithImpl<$Res>
    extends _$YearGroupCopyWithImpl<$Res, _$_YearGroup>
    implements _$$_YearGroupCopyWith<$Res> {
  __$$_YearGroupCopyWithImpl(
      _$_YearGroup _value, $Res Function(_$_YearGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? name = null,
    Object? admissionDate = null,
    Object? students = null,
  }) {
    return _then(_$_YearGroup(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      admissionDate: null == admissionDate
          ? _value.admissionDate
          : admissionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      students: null == students
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
    if (_students is EqualUnmodifiableListView) return _students;
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
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.admissionDate, admissionDate) ||
                other.admissionDate == admissionDate) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, objectId, name, admissionDate,
      const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YearGroupCopyWith<_$_YearGroup> get copyWith =>
      __$$_YearGroupCopyWithImpl<_$_YearGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YearGroupToJson(
      this,
    );
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
