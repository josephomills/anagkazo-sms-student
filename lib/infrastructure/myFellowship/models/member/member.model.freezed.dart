// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) {
  return _MemberModel.fromJson(json);
}

/// @nodoc
mixin _$MemberModel {
  String get objectId => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get whatsapp => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime get dob => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberModelCopyWith<MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberModelCopyWith<$Res> {
  factory $MemberModelCopyWith(
          MemberModel value, $Res Function(MemberModel) then) =
      _$MemberModelCopyWithImpl<$Res, MemberModel>;
  @useResult
  $Res call(
      {String objectId,
      String firstname,
      String lastname,
      String phone,
      String whatsapp,
      String email,
      DateTime dob,
      String country,
      String photoUrl});
}

/// @nodoc
class _$MemberModelCopyWithImpl<$Res, $Val extends MemberModel>
    implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? phone = null,
    Object? whatsapp = null,
    Object? email = null,
    Object? dob = null,
    Object? country = null,
    Object? photoUrl = null,
  }) {
    return _then(_value.copyWith(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: null == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemberModelCopyWith<$Res>
    implements $MemberModelCopyWith<$Res> {
  factory _$$_MemberModelCopyWith(
          _$_MemberModel value, $Res Function(_$_MemberModel) then) =
      __$$_MemberModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String objectId,
      String firstname,
      String lastname,
      String phone,
      String whatsapp,
      String email,
      DateTime dob,
      String country,
      String photoUrl});
}

/// @nodoc
class __$$_MemberModelCopyWithImpl<$Res>
    extends _$MemberModelCopyWithImpl<$Res, _$_MemberModel>
    implements _$$_MemberModelCopyWith<$Res> {
  __$$_MemberModelCopyWithImpl(
      _$_MemberModel _value, $Res Function(_$_MemberModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? phone = null,
    Object? whatsapp = null,
    Object? email = null,
    Object? dob = null,
    Object? country = null,
    Object? photoUrl = null,
  }) {
    return _then(_$_MemberModel(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: null == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberModel implements _MemberModel {
  const _$_MemberModel(
      {required this.objectId,
      required this.firstname,
      required this.lastname,
      required this.phone,
      required this.whatsapp,
      required this.email,
      required this.dob,
      required this.country,
      required this.photoUrl});

  factory _$_MemberModel.fromJson(Map<String, dynamic> json) =>
      _$$_MemberModelFromJson(json);

  @override
  final String objectId;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String phone;
  @override
  final String whatsapp;
  @override
  final String email;
  @override
  final DateTime dob;
  @override
  final String country;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'MemberModel(objectId: $objectId, firstname: $firstname, lastname: $lastname, phone: $phone, whatsapp: $whatsapp, email: $email, dob: $dob, country: $country, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberModel &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, objectId, firstname, lastname,
      phone, whatsapp, email, dob, country, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberModelCopyWith<_$_MemberModel> get copyWith =>
      __$$_MemberModelCopyWithImpl<_$_MemberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberModelToJson(
      this,
    );
  }
}

abstract class _MemberModel implements MemberModel {
  const factory _MemberModel(
      {required final String objectId,
      required final String firstname,
      required final String lastname,
      required final String phone,
      required final String whatsapp,
      required final String email,
      required final DateTime dob,
      required final String country,
      required final String photoUrl}) = _$_MemberModel;

  factory _MemberModel.fromJson(Map<String, dynamic> json) =
      _$_MemberModel.fromJson;

  @override
  String get objectId;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get phone;
  @override
  String get whatsapp;
  @override
  String get email;
  @override
  DateTime get dob;
  @override
  String get country;
  @override
  String get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_MemberModelCopyWith<_$_MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}
