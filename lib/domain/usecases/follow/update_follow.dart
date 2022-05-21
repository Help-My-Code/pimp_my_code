import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/repositories/follow_repository.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../entities/enum/notification_type.dart';

class UpdateFollowUseCase
    extends UseCase<UpdateFollowSuccess, UpdateFollowParam> {
  UpdateFollowUseCase(this.repository);

  final FollowRepository repository;

  @override
  Future<Either<UpdateFollowFailed, UpdateFollowSuccess>> call(
    UpdateFollowParam params,
  ) async {
    return repository.updateFollow(
        notificationType: params.notificationType,
        followerId: params.followerId,
        userId: params.userId);
  }
}

class UpdateFollowParam {
  UpdateFollowParam(this.notificationType, this.followerId, this.userId);

  final NotificationType notificationType;
  final String followerId;
  final String userId;
}

class UpdateFollowFailed extends Failure {}

class UpdateFollowSuccess {}
