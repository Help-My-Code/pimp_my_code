import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';

import '../../../core/failure.dart';
import '../../entities/group.dart';
import '../../repositories/group_repository.dart';

class FindMyGroupsUseCase extends UseCase<List<Group>, FindMyGroupsParam> {
  final GroupRepository _repository;

  FindMyGroupsUseCase(this._repository);

  @override
  Future<Either<FindMyGroupsFailure, List<Group>>> call(
      FindMyGroupsParam params,
  ) async {
    return await _repository.getByCreatorId(id: params.id);
  }
}

class FindMyGroupsFailure extends Failure {
  final String message;

  FindMyGroupsFailure(this.message);
}

class FindMyGroupsParam {
  final String id;

  FindMyGroupsParam(this.id);
}
