import 'package:dartz/dartz.dart';
import '../../entities/notification.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';
import '../../repositories/notification_repository.dart';

class FindNotificationsUseCase
    extends UseCase<List<Notification>, FindNotificationsParam> {
  final NotificationRepository _repository;

  FindNotificationsUseCase(this._repository);

  @override
  Future<Either<FindNotificationsFailure, List<Notification>>> call(
    FindNotificationsParam params,
  ) async {
    return await _repository.getByUserId(id: params.id);
  }
}

class FindNotificationsFailure extends Failure {
  final String message;

  FindNotificationsFailure(this.message);
}

class FindNotificationsParam {
  final String id;

  FindNotificationsParam(this.id);
}
