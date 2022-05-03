import 'package:pimp_my_code/domain/entities/enum/notification-type.dart';
import 'package:pimp_my_code/infrastructure/converter/content_mapper.dart';
import 'package:pimp_my_code/infrastructure/converter/group_mapper.dart';
import 'package:pimp_my_code/infrastructure/converter/user_mapper.dart';

import '../../domain/entities/notification.dart';
import '../source/api/model/notification/notification_model.dart';

class NotificationMapper {
  final UserMapper _userMapper;
  final ContentMapper _contentMapper;
  final GroupMapper _groupMapper;

  NotificationMapper(this._userMapper, this._contentMapper, this._groupMapper);

  NotificationType _notificationTypeFromString(String string) {
    switch (string) {
      case 'COMMENT':
        return NotificationType.comment;
      case 'SHARE':
        return NotificationType.share;
      case 'GROUP_JOIN_DEMAND':
        return NotificationType.groupJoinDemand;
      case 'GROUP_REFUSED':
        return NotificationType.groupRefused;
      case 'GROUP_ACCEPTED':
        return NotificationType.groupAccepted;
      case 'FOLLOW_DEMAND':
        return NotificationType.followDemand;
      case 'FOLLOW_REFUSED':
        return NotificationType.followRefused;
      case 'FOLLOW_ACCEPTED':
        return NotificationType.followAccepted;
      case 'LIKE':
        return NotificationType.like;
      case 'DISLIKE':
        return NotificationType.dislike;
      default:
        throw AssertionError();
    }
  }

  Notification mapApiNotificationToNotification(
      ApiNotificationModel apiNotificationModel) {
    if (apiNotificationModel.groupLinked != null) {
      if (apiNotificationModel.contentLinked != null) {
        if (apiNotificationModel.userLinked != null) {
        } else {}
      } else {
        if (apiNotificationModel.userLinked != null) {
        } else {}
      }
    } else {
      if (apiNotificationModel.contentLinked != null) {
        if (apiNotificationModel.userLinked != null) {
        } else {}
      } else {
        if (apiNotificationModel.userLinked != null) {
        } else {}
      }
    }
    return Notification(
      id: apiNotificationModel.id,
      dateHour: apiNotificationModel.dateHour,
      isSeen: apiNotificationModel.isSeen,
      notificationType:
          _notificationTypeFromString(apiNotificationModel.notificationType),
      groupLinked:
          _groupMapper.mapApiGroupToGroup(apiNotificationModel.groupLinked),
      contentLinked: _contentMapper
          .mapApiContentToContent(apiNotificationModel.contentLinked),
      userRecipient:
          _userMapper.mapApiUserToUser(apiNotificationModel.userRecipient),
      userLinked: _userMapper.mapApiUserToUser(apiNotificationModel.userLinked),
    );
  }
}
