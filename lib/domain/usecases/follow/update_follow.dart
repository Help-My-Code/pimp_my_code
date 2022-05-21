import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/entities/enum/status.dart';
import 'package:pimp_my_code/domain/repositories/follow_repository.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';

class UpdateFollowUseCase
    extends UseCase<UpdateFollowSuccess, UpdateFollowParam> {
  UpdateFollowUseCase(this.repository);

  final FollowRepository repository;

  @override
  Future<Either<UpdateFollowFailed, UpdateFollowSuccess>> call(
    UpdateFollowParam params,
  ) async {
    return repository.updateFollow(
        followStatus: params.followStatus,
        followerId: params.followerId,
        userId: params.userId);
  }
}

class UpdateFollowParam {
  UpdateFollowParam(this.followStatus, this.followerId, this.userId);

  final Status followStatus;
  final String followerId;
  final String userId;
}

class UpdateFollowFailed extends Failure {}

class UpdateFollowSuccess {}
