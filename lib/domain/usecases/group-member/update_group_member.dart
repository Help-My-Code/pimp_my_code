import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/repositories/group_member_repository.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../entities/enum/status.dart';

class UpdateGroupMemberUseCase
    extends UseCase<UpdateGroupMemberSuccess, UpdateGroupMemberParam> {
  UpdateGroupMemberUseCase(this.repository);

  final GroupMemberRepository repository;

  @override
  Future<Either<UpdateGroupMemberFailed, UpdateGroupMemberSuccess>> call(
    UpdateGroupMemberParam params,
  ) async {
    return repository.updateGroupMember(
        membershipStatus: params.membershipStatus,
        memberId: params.memberId,
        groupId: params.groupId);
  }
}

class UpdateGroupMemberParam {
  UpdateGroupMemberParam(this.membershipStatus, this.memberId, this.groupId);

  final Status membershipStatus;
  final String memberId;
  final String groupId;
}

class UpdateGroupMemberFailed extends Failure {}

class UpdateGroupMemberSuccess {}
