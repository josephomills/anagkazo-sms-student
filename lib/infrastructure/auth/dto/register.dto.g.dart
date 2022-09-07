// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterDTO _$$_RegisterDTOFromJson(Map<String, dynamic> json) =>
    _$_RegisterDTO(
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_RegisterDTOToJson(_$_RegisterDTO instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
    };
