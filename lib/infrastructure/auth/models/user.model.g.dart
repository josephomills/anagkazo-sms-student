// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      objectId: json['objectId'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      sessionToken: json['sessionToken'] as String,
      password: json['password'] as String?,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      dob: DateTime.parse(json['dob'] as String),
      photoUrl: json['photoUrl'] as String? ??
          "https://images.unsplash.com/photo-1507152832244-10d45c7eda57",
      country: json['country'] as String,
      gender: json['gender'] as String,
      phone: json['phone'] as String,
      whatsapp: json['whatsapp'] as String,
      classOf: json['classOf'] as String,
      title: json['title'] as String,
      isStaff: json['isStaff'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'username': instance.username,
      'email': instance.email,
      'sessionToken': instance.sessionToken,
      'password': instance.password,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'dob': instance.dob.toIso8601String(),
      'photoUrl': instance.photoUrl,
      'country': instance.country,
      'gender': instance.gender,
      'phone': instance.phone,
      'whatsapp': instance.whatsapp,
      'classOf': instance.classOf,
      'title': instance.title,
      'isStaff': instance.isStaff,
    };
