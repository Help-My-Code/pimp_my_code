import 'package:dartz/dartz.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../repositories/notification_repository.dart';

class SeeAllNotificationsUseCase
    extends UseCase<void, SeeAllNotificationsParam> {
  final NotificationRepository _repository;

  SeeAllNotificationsUseCase(this._repository);

  @override
  Future<Either<SeeAllNotificationsFailure, void>> call(
    SeeAllNotificationsParam params,
  ) async {
    return await _repository.seeAllNotificationsByUserId(id: params.id);
  }
}

class SeeAllNotificationsFailure extends Failure {
  final String message;

  SeeAllNotificationsFailure(this.message);
}

class SeeAllNotificationsParam {
  final String id;

  SeeAllNotificationsParam(this.id);
}
