import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';
import '../../entities/follow.dart';

import '../../../core/failure.dart';
import '../../repositories/follow_repository.dart';

class DeleteFollowUseCase
    extends UseCase<void, DeleteFollowParam> {
  final FollowRepository _repository;

  DeleteFollowUseCase(this._repository);

  @override
  Future<Either<DeleteFollowFailed, DeleteFollowSuccess>> call(
    DeleteFollowParam params,
  ) async {
    return await _repository.deleteFollow(userId: params.userId, followerId: params.followerId);
  }
}

class DeleteFollowFailed extends Failure {}

class DeleteFollowSuccess {}

class DeleteFollowParam {
  final String userId;
  final String followerId;

  DeleteFollowParam(this.userId, this.followerId);
}
