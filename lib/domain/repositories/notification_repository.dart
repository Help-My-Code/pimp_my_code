import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/entities/notification.dart';

import '../usecases/notification/find_notifications.dart';
import '../usecases/notification/see_all_notifications.dart';

abstract class NotificationRepository {
  Future<Either<SeeAllNotificationsFailure, void>> seeAllNotificationsByUserId({required String id});

  Future<Either<FindNotificationsFailure, List<Notification>>> getByUserId({required String id});
}
