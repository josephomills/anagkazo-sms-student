// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInDTO _$$_SignInDTOFromJson(Map<String, dynamic> json) => _$_SignInDTO(
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_SignInDTOToJson(_$_SignInDTO instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
    };
