// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiContentModel _$$_ApiContentModelFromJson(Map<String, dynamic> json) =>
    _$_ApiContentModel(
      id: json['id'] as String,
      content: json['content'] as String,
      creatorId: json['creatorId'] as String,
      medias:
          (json['medias'] as List<dynamic>).map((e) => e as String).toList(),
      username: json['username'] as String,
      title: json['title'] as String?,
      code: json['code'] as String?,
      codeResult: json['codeResult'] as String?,
      creator: json['creator'] == null
          ? null
          : ApiUserModel.fromJson(json['creator'] as Map<String, dynamic>),
      userImage: json['userImage'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      groupId: json['groupId'] as String?,
      parentId: json['parentId'] as String?,
      contentType: json['contentType'] as String,
    );

Map<String, dynamic> _$$_ApiContentModelToJson(_$_ApiContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'creatorId': instance.creatorId,
      'medias': instance.medias,
      'username': instance.username,
      'title': instance.title,
      'code': instance.code,
      'codeResult': instance.codeResult,
      'creator': instance.creator,
      'userImage': instance.userImage,
      'createdAt': instance.createdAt.toIso8601String(),
      'groupId': instance.groupId,
      'parentId': instance.parentId,
      'contentType': instance.contentType,
    };
