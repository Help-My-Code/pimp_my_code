import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../repositories/notification_repository.dart';

class SeeAllNotificationsUseCase
    extends UseCase<void, SeeAllNotificationsParam> {
  final NotificationRepository _repository;

  SeeAllNotificationsUseCase(this._repository);

  @override
  Future<Either<SeeAllNotificationsFailed, SeeAllNotificationsSuccess>> call(
    SeeAllNotificationsParam params,
  ) async {
    return await _repository.seeAllNotificationsByUserId(id: params.id);
  }
}

class SeeAllNotificationsParam {
  final String id;

  SeeAllNotificationsParam(this.id);
}

class SeeAllNotificationsFailed extends Failure {}

class SeeAllNotificationsSuccess {}
