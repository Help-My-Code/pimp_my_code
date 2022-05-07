import '../../domain/entities/enum/status.dart';
import '../../domain/entities/group_member.dart';
import 'user_mapper.dart';

import '../../domain/entities/enum/role.dart';
import '../source/api/model/group_member/group_member_model.dart';
import 'group_mapper.dart';

class GroupMemberMapper {
  final UserMapper _userMapper;
  final GroupMapper _groupMapper;

  GroupMemberMapper(this._userMapper, this._groupMapper);

  Role _roleFromString(String string) {
    switch (string) {
      case 'ADMIN':
        return Role.admin;
      default:
        return Role.member;
    }
  }

  Status _statusFromString(String string) {
    switch (string) {
      case 'ACCEPTED':
        return Status.accepted;
      case 'REFUSED':
        return Status.refused;
      default:
        return Status.pendingInvit;
    }
  }

  GroupMember mapApiGroupMemberToGroupMember(
      ApiGroupMemberModel apiGroupMemberModel) {
    return GroupMember(
      groupMemberId: apiGroupMemberModel.groupMemberId,
      membershipStatus: _statusFromString(apiGroupMemberModel.membershipStatus),
      userRole: _roleFromString(apiGroupMemberModel.userRole),
      member: _userMapper.mapApiUserToUser(apiGroupMemberModel.member),
      group: _groupMapper.mapApiGroupToGroup(apiGroupMemberModel.group),
    );
  }
}
