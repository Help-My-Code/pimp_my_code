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
      createdAt: DateTime.parse(json['createdAt'] as String),
      groupId: json['groupId'] as String?,
      creatorId: json['creatorId'] as String,
      parentId: json['parentId'] as String?,
      contentType: json['contentType'] as String,
      medias:
          (json['medias'] as List<dynamic>).map((e) => e as String).toList(),
      userPicture: json['userPicture'] as String?,
    );

Map<String, dynamic> _$$_ApiContentModelToJson(_$_ApiContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'groupId': instance.groupId,
      'creatorId': instance.creatorId,
      'parentId': instance.parentId,
      'contentType': instance.contentType,
      'medias': instance.medias,
      'userPicture': instance.userPicture,
    };
