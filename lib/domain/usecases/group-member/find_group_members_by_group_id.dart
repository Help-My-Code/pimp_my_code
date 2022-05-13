import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';

import '../../../core/failure.dart';
import '../../entities/group_member.dart';
import '../../repositories/group_member_repository.dart';

class FindGroupMembersByGroupIdUseCase
    extends UseCase<List<GroupMember>, FindGroupMembersByGroupIdParam> {
  final GroupMemberRepository _repository;

  FindGroupMembersByGroupIdUseCase(this._repository);

  @override
  Future<Either<FindGroupMembersByGroupIdFailure, List<GroupMember>>> call(
    FindGroupMembersByGroupIdParam params,
  ) async {
    return await _repository.getByGroupId(id: params.id);
  }
}

class FindGroupMembersByGroupIdFailure extends Failure {
  final String message;

  FindGroupMembersByGroupIdFailure(this.message);
}

class FindGroupMembersByGroupIdParam {
  final String id;

  FindGroupMembersByGroupIdParam(this.id);
}
