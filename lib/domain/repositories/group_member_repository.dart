import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/entities/group_member.dart';

import '../usecases/group/find_member_groups.dart';

abstract class GroupMemberRepository {
  Future<Either<FindGroupMembersFailure, List<GroupMember>>> getByMemberId({required String id});
}
