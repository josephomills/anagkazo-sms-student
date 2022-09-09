// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginDTO _$LoginDTOFromJson(Map<String, dynamic> json) {
  return _LoginDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginDTO {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDTOCopyWith<LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDTOCopyWith<$Res> {
  factory $LoginDTOCopyWith(LoginDTO value, $Res Function(LoginDTO) then) =
      _$LoginDTOCopyWithImpl<$Res>;
  $Res call({String username, String password, String? email});
}

/// @nodoc
class _$LoginDTOCopyWithImpl<$Res> implements $LoginDTOCopyWith<$Res> {
  _$LoginDTOCopyWithImpl(this._value, this._then);

  final LoginDTO _value;
  // ignore: unused_field
  final $Res Function(LoginDTO) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginDTOCopyWith<$Res> implements $LoginDTOCopyWith<$Res> {
  factory _$$_LoginDTOCopyWith(
          _$_LoginDTO value, $Res Function(_$_LoginDTO) then) =
      __$$_LoginDTOCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password, String? email});
}

/// @nodoc
class __$$_LoginDTOCopyWithImpl<$Res> extends _$LoginDTOCopyWithImpl<$Res>
    implements _$$_LoginDTOCopyWith<$Res> {
  __$$_LoginDTOCopyWithImpl(
      _$_LoginDTO _value, $Res Function(_$_LoginDTO) _then)
      : super(_value, (v) => _then(v as _$_LoginDTO));

  @override
  _$_LoginDTO get _value => super._value as _$_LoginDTO;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_LoginDTO(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDTO implements _LoginDTO {
  const _$_LoginDTO(
      {required this.username, required this.password, this.email});

  factory _$_LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDTOFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  final String? email;

  @override
  String toString() {
    return 'LoginDTO(username: $username, password: $password, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDTO &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_LoginDTOCopyWith<_$_LoginDTO> get copyWith =>
      __$$_LoginDTOCopyWithImpl<_$_LoginDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDTOToJson(this);
  }
}

abstract class _LoginDTO implements LoginDTO {
  const factory _LoginDTO(
      {required final String username,
      required final String password,
      final String? email}) = _$_LoginDTO;

  factory _LoginDTO.fromJson(Map<String, dynamic> json) = _$_LoginDTO.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDTOCopyWith<_$_LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
