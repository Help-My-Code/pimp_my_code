import 'package:dartz/dartz.dart';
import '../../entities/group_member.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../repositories/group_member_repository.dart';

class FindGroupMembersUseCase
    extends UseCase<List<GroupMember>, FindGroupMembersParam> {
  final GroupMemberRepository _repository;

  FindGroupMembersUseCase(this._repository);

  @override
  Future<Either<FindGroupMembersFailure, List<GroupMember>>> call(
    FindGroupMembersParam params,
  ) async {
    return await _repository.getByMemberId(id: params.id);
  }
}

class FindGroupMembersFailure extends Failure {
  final String message;

  FindGroupMembersFailure(this.message);
}

class FindGroupMembersParam {
  final String id;

  FindGroupMembersParam(this.id);
}
