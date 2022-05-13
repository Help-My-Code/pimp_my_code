import 'package:dartz/dartz.dart';
import '../entities/group_member.dart';

import '../usecases/group-member/create_group_member.dart';
import '../usecases/group-member/delete_group_member.dart';
import '../usecases/group-member/find_group_members.dart';
import '../usecases/group-member/find_group_members_by_group_id.dart';

abstract class GroupMemberRepository {
  Future<Either<FindGroupMembersFailure, List<GroupMember>>> getByMemberId(
      {required String id});

  Future<Either<FindGroupMembersByGroupIdFailure, List<GroupMember>>> getByGroupId(
      {required String id});

  Future<Either<CreateGroupMemberFailed, CreateGroupMemberSuccess>> createGroupMember(
      {required String userId, required String groupId});

  Future<Either<DeleteGroupMemberFailed, DeleteGroupMemberSuccess>> deleteGroupMember(
      {required String userId, required String groupId});
}
