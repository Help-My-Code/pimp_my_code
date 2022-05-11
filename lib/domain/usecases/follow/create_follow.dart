import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';

import '../../../core/failure.dart';
import '../../repositories/follow_repository.dart';

class CreateFollowUseCase extends UseCase<void, CreateFollowParam> {
  final FollowRepository _repository;

  CreateFollowUseCase(this._repository);

  @override
  Future<Either<CreateFollowFailed, CreateFollowSuccess>> call(
    CreateFollowParam params,
  ) async {
    return await _repository.createFollow(
        userId: params.userId, followerId: params.followerId);
  }
}

class CreateFollowFailed extends Failure {}

class CreateFollowSuccess {}

class CreateFollowParam {
  final String userId;
  final String followerId;

  CreateFollowParam(this.userId, this.followerId);
}
