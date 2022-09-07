// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberModel _$$_MemberModelFromJson(Map<String, dynamic> json) =>
    _$_MemberModel(
      objectId: json['objectId'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      phone: json['phone'] as String,
      whatsapp: json['whatsapp'] as String,
      email: json['email'] as String,
      dob: DateTime.parse(json['dob'] as String),
      country: json['country'] as String,
      photoUrl: json['photoUrl'] as String,
    );

Map<String, dynamic> _$$_MemberModelToJson(_$_MemberModel instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'whatsapp': instance.whatsapp,
      'email': instance.email,
      'dob': instance.dob.toIso8601String(),
      'country': instance.country,
      'photoUrl': instance.photoUrl,
    };
