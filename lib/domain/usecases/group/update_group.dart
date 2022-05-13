import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/entities/enum/confidentiality.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../repositories/group_repository.dart';

class UpdateGroupUseCase extends UseCase<UpdateGroupSuccess, UpdateGroupParams> {
  UpdateGroupUseCase(this.repository);

  final GroupRepository repository;

  @override
  Future<Either<UpdateGroupFailed, UpdateGroupSuccess>> call(
    UpdateGroupParams params,
  ) async {
    return repository.updateGroup(
      params.groupId,
      params.name,
      params.description,
      params.profilePictureURL,
      params.confidentiality,
    );
  }
}

class UpdateGroupParams {
  UpdateGroupParams(
    this.groupId,
    this.name,
    this.description,
    this.profilePictureURL,
    this.confidentiality,
  );

  final String groupId;
  final String name;
  final String description;
  final String profilePictureURL;
  final Confidentiality confidentiality;
}

class UpdateGroupFailed extends Failure {}

class UpdateGroupSuccess {}
