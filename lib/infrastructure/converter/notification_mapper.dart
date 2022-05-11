import 'content_mapper.dart';
import 'group_mapper.dart';
import 'user_mapper.dart';

import '../../domain/entities/enum/notification_type.dart';
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
      case 'DISLIKE':
        return NotificationType.dislike;
      default:
        return NotificationType.like;
    }
  }

  Notification mapApiNotificationToNotification(
      ApiNotificationModel apiNotificationModel) {
    return Notification(
      id: apiNotificationModel.id,
      dateHour: apiNotificationModel.dateHour,
      isSeen: apiNotificationModel.isSeen,
      notificationType:
          _notificationTypeFromString(apiNotificationModel.notificationType),
      groupLinked: apiNotificationModel.groupLinked == null
          ? null
          : _groupMapper.mapApiGroupToGroup(apiNotificationModel.groupLinked!),
      // contentLinked: apiNotificationModel.contentLinked == null
      //     ? null
      //     : _contentMapper
      //         .mapApiContentToContent(apiNotificationModel.contentLinked!),
      userRecipient:
          _userMapper.mapApiUserToUser(apiNotificationModel.userRecipient),
      userLinked: apiNotificationModel.userLinked == null
          ? null
          : _userMapper.mapApiUserToUser(apiNotificationModel.userLinked!),
    );
  }
}
