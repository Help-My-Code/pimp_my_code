import 'package:dartz/dartz.dart';
import '../entities/group_member.dart';

import '../usecases/group-member/find_group_members.dart';

abstract class GroupMemberRepository {
  Future<Either<FindGroupMembersFailure, List<GroupMember>>> getByMemberId(
      {required String id});
}
