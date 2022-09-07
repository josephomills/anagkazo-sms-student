// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fellowship.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FellowshipModel _$$_FellowshipModelFromJson(Map<String, dynamic> json) =>
    _$_FellowshipModel(
      objectId: json['objectId'] as String,
      name: json['name'] as String,
      leader: UserModel.fromJson(json['leader'] as Map<String, dynamic>),
      constituency: ConstituencyModel.fromJson(
          json['constituency'] as Map<String, dynamic>),
      bacenta: BacentaModel.fromJson(json['bacenta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FellowshipModelToJson(_$_FellowshipModel instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'name': instance.name,
      'leader': instance.leader,
      'constituency': instance.constituency,
      'bacenta': instance.bacenta,
    };
