// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiFollowModel _$$_ApiFollowModelFromJson(Map<String, dynamic> json) =>
    _$_ApiFollowModel(
      id: json['id'] as String,
      followStatus: json['follow_status'] as String,
      follower: ApiUserModel.fromJson(json['follower'] as Map<String, dynamic>),
      user: ApiUserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApiFollowModelToJson(_$_ApiFollowModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'follow_status': instance.followStatus,
      'follower': instance.follower,
      'user': instance.user,
    };
