// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiGroupModel _$$_ApiGroupModelFromJson(Map<String, dynamic> json) =>
    _$_ApiGroupModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      confidentiality: json['confidentiality'] as String,
      principalPictureUrl: json['principal_picture_url'] as String?,
      creator: ApiUserModel.fromJson(json['creator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApiGroupModelToJson(_$_ApiGroupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'confidentiality': instance.confidentiality,
      'principal_picture_url': instance.principalPictureUrl,
      'creator': instance.creator,
    };
