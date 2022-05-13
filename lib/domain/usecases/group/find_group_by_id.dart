import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';

import '../../../core/failure.dart';
import '../../entities/group.dart';
import '../../repositories/group_repository.dart';

class FindGroupByIdUseCase
    extends UseCase<Group, FindGroupByIdParam> {
  final GroupRepository _repository;

  FindGroupByIdUseCase(this._repository);

  @override
  Future<Either<FindGroupByIdFailure, Group>> call(
    FindGroupByIdParam params,
  ) async {
    return await _repository.getById(id: params.name);
  }
}

class FindGroupByIdFailure extends Failure {
  final String message;

  FindGroupByIdFailure(this.message);
}

class FindGroupByIdParam {
  final String name;

  FindGroupByIdParam(this.name);
}
