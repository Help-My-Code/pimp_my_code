import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';

import '../../../core/failure.dart';
import '../../entities/group.dart';
import '../../repositories/group_repository.dart';

class FindGroupByNameUseCase
    extends UseCase<List<Group>, FindGroupByNameParam> {
  final GroupRepository _repository;

  FindGroupByNameUseCase(this._repository);

  @override
  Future<Either<FindGroupByNameFailure, List<Group>>> call(
    FindGroupByNameParam params,
  ) async {
    return await _repository.getByName(name: params.name);
  }
}

class FindGroupByNameFailure extends Failure {
  final String message;

  FindGroupByNameFailure(this.message);
}

class FindGroupByNameParam {
  final String name;

  FindGroupByNameParam(this.name);
}
