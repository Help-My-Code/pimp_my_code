import 'package:dartz/dartz.dart';

import '../../domain/entities/notification.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../domain/usecases/notification/find_notifications.dart';
import '../../domain/usecases/notification/see_all_notifications.dart';
import '../converter/notification_mapper.dart';
import '../source/api/command/notification.dart';
import '../source/api/model/notification/notification_model.dart';

class ApiNotificationRepository extends NotificationRepository {
  final NotificationInteractor _dataSource;
  final NotificationMapper _notificationMapper;

  ApiNotificationRepository(this._dataSource, this._notificationMapper);

  @override
  Future<Either<FindNotificationsFailure, List<Notification>>> getByUserId({required String id}) async {
    final response = await _dataSource.getByUserId(id);
    final List<Map<String, dynamic>> apiNotifications =
        List.from(response.body['notifications']);
    return Right(
      apiNotifications
          .map(ApiNotificationModel.fromJson)
          .map(_notificationMapper.mapApiNotificationToNotification)
          .toList(),
    );
  }

  @override
  Future<Either<SeeAllNotificationsFailure, void>> seeAllNotificationsByUserId({required String id}) {
    throw UnimplementedError();
  }
}
