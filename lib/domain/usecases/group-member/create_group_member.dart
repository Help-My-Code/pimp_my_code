import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';

import '../../../core/failure.dart';
import '../../repositories/group_member_repository.dart';

class CreateGroupMemberUseCase extends UseCase<void, CreateGroupMemberParam> {
  final GroupMemberRepository _repository;

  CreateGroupMemberUseCase(this._repository);

  @override
  Future<Either<CreateGroupMemberFailed, CreateGroupMemberSuccess>> call(
    CreateGroupMemberParam params,
  ) async {
    return await _repository.createGroupMember(
        userId: params.userId, groupId: params.groupId);
  }
}

class CreateGroupMemberFailed extends Failure {}

class CreateGroupMemberSuccess {}

class CreateGroupMemberParam {
  final String userId;
  final String groupId;

  CreateGroupMemberParam(this.userId, this.groupId);
}
