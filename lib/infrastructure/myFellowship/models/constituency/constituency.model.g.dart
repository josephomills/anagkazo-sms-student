// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constituency.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConstituencyModel _$$_ConstituencyModelFromJson(Map<String, dynamic> json) =>
    _$_ConstituencyModel(
      objectId: json['objectId'] as String? ?? "",
      name: json['name'] as String? ?? "",
      leader: json['leader'] == null
          ? const UserModel()
          : UserModel.fromJson(json['leader'] as Map<String, dynamic>),
      bacentas: (json['bacentas'] as List<dynamic>?)
          ?.map((e) => BacentaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ConstituencyModelToJson(
        _$_ConstituencyModel instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'name': instance.name,
      'leader': instance.leader,
      'bacentas': instance.bacentas,
    };
