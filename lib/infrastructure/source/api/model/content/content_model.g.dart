// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiContentModel _$$_ApiContentModelFromJson(Map<String, dynamic> json) =>
    _$_ApiContentModel(
      id: json['id'] as String,
      title: json['title'] as String?,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      groupId: json['group_id'] as String?,
      creatorId: json['creator_id'] as String,
      parentId: json['parent_id'] as String?,
      contentType: json['content_type'] as String,
    );

Map<String, dynamic> _$$_ApiContentModelToJson(_$_ApiContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'group_id': instance.groupId,
      'creator_id': instance.creatorId,
      'parent_id': instance.parentId,
      'content_type': instance.contentType,
    };
