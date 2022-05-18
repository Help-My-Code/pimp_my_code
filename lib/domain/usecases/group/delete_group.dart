import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../repositories/group_repository.dart';

class DeleteGroupUseCase extends UseCase<DeleteGroupSuccess, DeleteGroupParam> {
  DeleteGroupUseCase(this.repository);

  final GroupRepository repository;

  @override
  Future<Either<DeleteGroupFailed, DeleteGroupSuccess>> call(
    DeleteGroupParam params,
  ) async {
    return repository.deleteGroup(params.groupId);
  }
}

class DeleteGroupParam {
  DeleteGroupParam(this.groupId);

  final String groupId;
}

class DeleteGroupFailed extends Failure {}

class DeleteGroupSuccess {}
