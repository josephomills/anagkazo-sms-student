// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bacenta.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BacentaModel _$$_BacentaModelFromJson(Map<String, dynamic> json) =>
    _$_BacentaModel(
      objectId: json['objectId'] as String,
      name: json['name'] as String,
      leader: UserModel.fromJson(json['leader'] as Map<String, dynamic>),
      fellowships: (json['fellowships'] as List<dynamic>)
          .map((e) => FellowshipModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BacentaModelToJson(_$_BacentaModel instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'name': instance.name,
      'leader': instance.leader,
      'fellowships': instance.fellowships,
    };
