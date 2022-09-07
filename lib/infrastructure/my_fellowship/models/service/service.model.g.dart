// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceModel(
      objectId: json['objectId'] as String,
      type: json['type'] as String,
      date: DateTime.parse(json['date'] as String),
      attendance: json['attendance'] as int,
      cediIncome: json['cediIncome'] as int,
      foreignIncome: json['foreignIncome'] as int? ?? 0,
      numTithers: json['numTithers'] as int? ?? 0,
      treasurers: (json['treasurers'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      treasurersSelfie: json['treasurersSelfie'] as String,
      servicePhoto: json['servicePhoto'] as String,
      membersPresent: (json['membersPresent'] as List<dynamic>)
          .map((e) => MemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      fellowship:
          FellowshipModel.fromJson(json['fellowship'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'type': instance.type,
      'date': instance.date.toIso8601String(),
      'attendance': instance.attendance,
      'cediIncome': instance.cediIncome,
      'foreignIncome': instance.foreignIncome,
      'numTithers': instance.numTithers,
      'treasurers': instance.treasurers,
      'treasurersSelfie': instance.treasurersSelfie,
      'servicePhoto': instance.servicePhoto,
      'membersPresent': instance.membersPresent,
      'fellowship': instance.fellowship,
    };
