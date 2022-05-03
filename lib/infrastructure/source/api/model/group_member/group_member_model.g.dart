// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiGroupMemberModel _$$_ApiGroupMemberModelFromJson(
        Map<String, dynamic> json) =>
    _$_ApiGroupMemberModel(
      groupMemberId: json['group_member_id'] as String,
      membershipStatus: json['membership_status'] as String,
      userRole: json['user_role'] as String,
      member: ApiUserModel.fromJson(json['member'] as Map<String, dynamic>),
      group: ApiGroupModel.fromJson(json['group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApiGroupMemberModelToJson(
        _$_ApiGroupMemberModel instance) =>
    <String, dynamic>{
      'group_member_id': instance.groupMemberId,
      'membership_status': instance.membershipStatus,
      'user_role': instance.userRole,
      'member': instance.member,
      'group': instance.group,
    };
