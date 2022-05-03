import 'package:pimp_my_code/domain/entities/enum/status.dart';
import 'package:pimp_my_code/domain/entities/group_member.dart';
import 'package:pimp_my_code/infrastructure/converter/user_mapper.dart';

import '../../domain/entities/enum/confidentiality.dart';
import '../../domain/entities/enum/role.dart';
import '../../domain/entities/group.dart';
import '../source/api/model/group_member/group_member_model.dart';
import '../source/api/model/group/group_model.dart';
import 'group_mapper.dart';

class GroupMemberMapper {

  final UserMapper _userMapper;
  final GroupMapper _groupMapper;

  GroupMemberMapper(this._userMapper, this._groupMapper);

  Role _roleFromString(String string) {
    switch (string) {
      case 'ADMIN':
        return Role.admin;
      case 'MEMBER':
        return Role.member;
      default:
        throw AssertionError();
    }
  }

  Status _statusFromString(String string) {
    switch (string) {
      case 'PENDING_INVIT':
        return Status.pendingInvit;
      case 'ACCEPTED':
        return Status.accepted;
      case 'REFUSED':
        return Status.refused;
      default:
        throw AssertionError();
    }
  }

  GroupMember mapApiGroupMemberToGroupMember(ApiGroupMemberModel apiGroupMemberModel) {
    return GroupMember(
      groupMemberId: apiGroupMemberModel.groupMemberId,
      membershipStatus: _statusFromString(apiGroupMemberModel.membershipStatus),
      userRole: _roleFromString(apiGroupMemberModel.userRole),
      member: _userMapper.mapApiUserToUser(apiGroupMemberModel.member),
      group: _groupMapper.mapApiGroupToGroup(apiGroupMemberModel.group),
    );
  }
}
