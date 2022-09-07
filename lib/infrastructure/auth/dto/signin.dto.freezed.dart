// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signin.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInDTO _$SignInDTOFromJson(Map<String, dynamic> json) {
  return _SignInDTO.fromJson(json);
}

/// @nodoc
mixin _$SignInDTO {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInDTOCopyWith<SignInDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDTOCopyWith<$Res> {
  factory $SignInDTOCopyWith(SignInDTO value, $Res Function(SignInDTO) then) =
      _$SignInDTOCopyWithImpl<$Res>;
  $Res call({String username, String password, String? email});
}

/// @nodoc
class _$SignInDTOCopyWithImpl<$Res> implements $SignInDTOCopyWith<$Res> {
  _$SignInDTOCopyWithImpl(this._value, this._then);

  final SignInDTO _value;
  // ignore: unused_field
  final $Res Function(SignInDTO) _then;

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
abstract class _$$_SignInDTOCopyWith<$Res> implements $SignInDTOCopyWith<$Res> {
  factory _$$_SignInDTOCopyWith(
          _$_SignInDTO value, $Res Function(_$_SignInDTO) then) =
      __$$_SignInDTOCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password, String? email});
}

/// @nodoc
class __$$_SignInDTOCopyWithImpl<$Res> extends _$SignInDTOCopyWithImpl<$Res>
    implements _$$_SignInDTOCopyWith<$Res> {
  __$$_SignInDTOCopyWithImpl(
      _$_SignInDTO _value, $Res Function(_$_SignInDTO) _then)
      : super(_value, (v) => _then(v as _$_SignInDTO));

  @override
  _$_SignInDTO get _value => super._value as _$_SignInDTO;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_SignInDTO(
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
class _$_SignInDTO implements _SignInDTO {
  const _$_SignInDTO(
      {required this.username, required this.password, this.email});

  factory _$_SignInDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SignInDTOFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  final String? email;

  @override
  String toString() {
    return 'SignInDTO(username: $username, password: $password, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInDTO &&
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
  _$$_SignInDTOCopyWith<_$_SignInDTO> get copyWith =>
      __$$_SignInDTOCopyWithImpl<_$_SignInDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignInDTOToJson(this);
  }
}

abstract class _SignInDTO implements SignInDTO {
  const factory _SignInDTO(
      {required final String username,
      required final String password,
      final String? email}) = _$_SignInDTO;

  factory _SignInDTO.fromJson(Map<String, dynamic> json) =
      _$_SignInDTO.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_SignInDTOCopyWith<_$_SignInDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
