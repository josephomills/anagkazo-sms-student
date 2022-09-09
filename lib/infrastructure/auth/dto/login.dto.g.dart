// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDTO _$$_LoginDTOFromJson(Map<String, dynamic> json) => _$_LoginDTO(
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_LoginDTOToJson(_$_LoginDTO instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
    };
