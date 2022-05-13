import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';

import '../../../core/failure.dart';
import '../../repositories/follow_repository.dart';
import '../../repositories/group_member_repository.dart';

class DeleteGroupMemberUseCase extends UseCase<void, DeleteGroupMemberParam> {
  final GroupMemberRepository _repository;

  DeleteGroupMemberUseCase(this._repository);

  @override
  Future<Either<DeleteGroupMemberFailed, DeleteGroupMemberSuccess>> call(
    DeleteGroupMemberParam params,
  ) async {
    return await _repository.deleteGroupMember(
        userId: params.userId, groupId: params.followerId);
  }
}

class DeleteGroupMemberFailed extends Failure {}

class DeleteGroupMemberSuccess {}

class DeleteGroupMemberParam {
  final String userId;
  final String followerId;

  DeleteGroupMemberParam(this.userId, this.followerId);
}
