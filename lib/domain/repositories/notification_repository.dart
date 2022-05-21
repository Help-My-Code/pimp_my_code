import 'package:dartz/dartz.dart';
import '../entities/notification.dart';

import '../usecases/notification/find_notifications.dart';
import '../usecases/notification/see_all_notifications.dart';

abstract class NotificationRepository {
  Future<Either<SeeAllNotificationsFailed, SeeAllNotificationsSuccess>> seeAllNotificationsByUserId(
      {required String id});

  Future<Either<FindNotificationsFailure, List<Notification>>> getByUserId(
      {required String id});
}
