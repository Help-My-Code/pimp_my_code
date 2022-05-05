enum NotificationType {
  comment,
  share,
  groupJoinDemand,
  groupRefused,
  groupAccepted,
  followDemand,
  followRefused,
  followAccepted,
  like,
  dislike,
}

extension NotificationTypeExtension on NotificationType {
  String get string {
    switch (this) {
      case NotificationType.comment:
        return 'comment';
      case NotificationType.share:
        return 'share';
      case NotificationType.groupJoinDemand:
        return 'groupJoinDemand';
      case NotificationType.groupRefused:
        return 'groupRefused';
      case NotificationType.groupAccepted:
        return 'groupAccepted';
      case NotificationType.followDemand:
        return 'followDemand';
      case NotificationType.followRefused:
        return 'followRefused';
      case NotificationType.followAccepted:
        return 'followAccepted';
      case NotificationType.like:
        return 'like';
      case NotificationType.dislike:
        return 'dislike';
    }
  }
}
