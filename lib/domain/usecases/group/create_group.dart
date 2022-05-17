import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/entities/enum/confidentiality.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../repositories/group_repository.dart';

class CreateGroupUseCase extends UseCase<CreateGroupSuccess, CreateGroupParams> {
  CreateGroupUseCase(this.repository);

  final GroupRepository repository;

  @override
  Future<Either<CreateGroupFailed, CreateGroupSuccess>> call(
    CreateGroupParams params,
  ) async {
    return repository.createGroup(
      params.creatorId,
      params.name,
    );
  }
}

class CreateGroupParams {
  CreateGroupParams(
    this.creatorId,
    this.name,
  );

  final String creatorId;
  final String name;
}

class CreateGroupFailed extends Failure {}

class CreateGroupSuccess {}
