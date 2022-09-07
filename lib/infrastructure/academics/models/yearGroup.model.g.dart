// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yearGroup.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YearGroup _$$_YearGroupFromJson(Map<String, dynamic> json) => _$_YearGroup(
      objectId: json['objectId'] as String,
      name: json['name'] as String,
      admissionDate: DateTime.parse(json['admissionDate'] as String),
      students: (json['students'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_YearGroupToJson(_$_YearGroup instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'name': instance.name,
      'admissionDate': instance.admissionDate.toIso8601String(),
      'students': instance.students,
    };
