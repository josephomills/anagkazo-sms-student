// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get objectId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get sessionToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get password => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  DateTime? get dob => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get whatsapp => throw _privateConstructorUsedError;
  String? get yearGroup => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool get isStaff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String objectId,
      String username,
      String email,
      @JsonKey(ignore: true) String? sessionToken,
      @JsonKey(ignore: true) String? password,
      String firstname,
      String lastname,
      String? middleName,
      DateTime? dob,
      String? photoUrl,
      String? country,
      String gender,
      String phone,
      String whatsapp,
      String? yearGroup,
      String? title,
      bool isStaff});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? username = null,
    Object? email = null,
    Object? sessionToken = freezed,
    Object? password = freezed,
    Object? firstname = null,
    Object? lastname = null,
    Object? middleName = freezed,
    Object? dob = freezed,
    Object? photoUrl = freezed,
    Object? country = freezed,
    Object? gender = null,
    Object? phone = null,
    Object? whatsapp = null,
    Object? yearGroup = freezed,
    Object? title = freezed,
    Object? isStaff = null,
  }) {
    return _then(_value.copyWith(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sessionToken: freezed == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: null == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      yearGroup: freezed == yearGroup
          ? _value.yearGroup
          : yearGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: null == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String objectId,
      String username,
      String email,
      @JsonKey(ignore: true) String? sessionToken,
      @JsonKey(ignore: true) String? password,
      String firstname,
      String lastname,
      String? middleName,
      DateTime? dob,
      String? photoUrl,
      String? country,
      String gender,
      String phone,
      String whatsapp,
      String? yearGroup,
      String? title,
      bool isStaff});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? username = null,
    Object? email = null,
    Object? sessionToken = freezed,
    Object? password = freezed,
    Object? firstname = null,
    Object? lastname = null,
    Object? middleName = freezed,
    Object? dob = freezed,
    Object? photoUrl = freezed,
    Object? country = freezed,
    Object? gender = null,
    Object? phone = null,
    Object? whatsapp = null,
    Object? yearGroup = freezed,
    Object? title = freezed,
    Object? isStaff = null,
  }) {
    return _then(_$_UserModel(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sessionToken: freezed == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: null == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      yearGroup: freezed == yearGroup
          ? _value.yearGroup
          : yearGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: null == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {this.objectId = "",
      this.username = "",
      this.email = "",
      @JsonKey(ignore: true) this.sessionToken = "",
      @JsonKey(ignore: true) this.password,
      this.firstname = "",
      this.lastname = "",
      this.middleName = "",
      this.dob,
      this.photoUrl =
          "https://images.unsplash.com/photo-1507152832244-10d45c7eda57",
      this.country = "",
      this.gender = "",
      this.phone = "",
      this.whatsapp = "",
      this.yearGroup = "",
      this.title = "",
      this.isStaff = false});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey()
  final String objectId;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey(ignore: true)
  final String? sessionToken;
  @override
  @JsonKey(ignore: true)
  final String? password;
  @override
  @JsonKey()
  final String firstname;
  @override
  @JsonKey()
  final String lastname;
  @override
  @JsonKey()
  final String? middleName;
  @override
  final DateTime? dob;
  @override
  @JsonKey()
  final String? photoUrl;
  @override
  @JsonKey()
  final String? country;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String whatsapp;
  @override
  @JsonKey()
  final String? yearGroup;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final bool isStaff;

  @override
  String toString() {
    return 'UserModel(objectId: $objectId, username: $username, email: $email, sessionToken: $sessionToken, password: $password, firstname: $firstname, lastname: $lastname, middleName: $middleName, dob: $dob, photoUrl: $photoUrl, country: $country, gender: $gender, phone: $phone, whatsapp: $whatsapp, yearGroup: $yearGroup, title: $title, isStaff: $isStaff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.yearGroup, yearGroup) ||
                other.yearGroup == yearGroup) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isStaff, isStaff) || other.isStaff == isStaff));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      objectId,
      username,
      email,
      sessionToken,
      password,
      firstname,
      lastname,
      middleName,
      dob,
      photoUrl,
      country,
      gender,
      phone,
      whatsapp,
      yearGroup,
      title,
      isStaff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final String objectId,
      final String username,
      final String email,
      @JsonKey(ignore: true) final String? sessionToken,
      @JsonKey(ignore: true) final String? password,
      final String firstname,
      final String lastname,
      final String? middleName,
      final DateTime? dob,
      final String? photoUrl,
      final String? country,
      final String gender,
      final String phone,
      final String whatsapp,
      final String? yearGroup,
      final String? title,
      final bool isStaff}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get objectId;
  @override
  String get username;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  String? get sessionToken;
  @override
  @JsonKey(ignore: true)
  String? get password;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String? get middleName;
  @override
  DateTime? get dob;
  @override
  String? get photoUrl;
  @override
  String? get country;
  @override
  String get gender;
  @override
  String get phone;
  @override
  String get whatsapp;
  @override
  String? get yearGroup;
  @override
  String? get title;
  @override
  bool get isStaff;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
