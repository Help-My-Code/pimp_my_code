import 'package:flutter/material.dart';
import 'package:pimp_my_code/domain/entities/enum/notification_type.dart';
import 'package:pimp_my_code/domain/entities/notification.dart' as notification;

class NotificationsLoaded extends StatelessWidget {
  final List<notification.Notification> notifications;

  const NotificationsLoaded({
    Key? key,
    required this.notifications,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      _initIcon(notifications[index]),
                      const SizedBox(width: 10),
                      _initText(notifications[index]),
                    ],
                  ),
                  const SizedBox(height: 5),
                ]);
              },
            ),
          ),
        ],
      ),
    );
  }

  _initIcon(notification.Notification notification) {
    switch (notification.notificationType) {
      case NotificationType.dislike:
        return const Icon(Icons.thumb_down);
      case NotificationType.comment:
        return const Icon(Icons.comment_outlined);
      case NotificationType.share:
        return const Icon(Icons.share);
      case NotificationType.groupJoinDemand:
      case NotificationType.groupAccepted:
        return const Icon(Icons.group_add);
      case NotificationType.groupRefused:
        return const Icon(Icons.group_remove);
      case NotificationType.followDemand:
      case NotificationType.followAccepted:
        return const Icon(Icons.person_add);
      case NotificationType.followRefused:
        return const Icon(Icons.person_remove);
      default:
        return const Icon(Icons.thumb_up);
    }
  }

  _initText(notification.Notification notification) {
    switch (notification.notificationType) {
      case NotificationType.dislike:
        return Text(
            notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                ' n\'a pas aimé votre publication',
            style: const TextStyle(fontSize: 16));
      case NotificationType.comment:
        return Text(
            notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                ' a commenté votre publication',
            style: const TextStyle(fontSize: 16));
      case NotificationType.share:
        return Text(
            notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                ' a partagé votre publication',
            style: const TextStyle(fontSize: 16));
      case NotificationType.groupJoinDemand:
        return Text(
            'Vous avez reçu une demande d\'adhésion pour le groupe ' +
                notification.groupLinked!.name,
            style: const TextStyle(fontSize: 16));
      case NotificationType.groupAccepted:
        return Text(
            'Votre demande d\'adhésion au groupe ' +
                notification.groupLinked!.name +
                ' a été acceptée',
            style: const TextStyle(fontSize: 16));
      case NotificationType.groupRefused:
        return Text(
            'Votre demande d\'adhésion au groupe ' +
                notification.groupLinked!.name +
                ' a été refusée',
            style: const TextStyle(fontSize: 16));
      case NotificationType.followDemand:
        return Text(
            notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                ' demande à vous suivre',
            style: const TextStyle(fontSize: 16));
      case NotificationType.followAccepted:
        return Text(
            'Votre demande de follow à ' +
                notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                ' a été accepté',
            style: const TextStyle(fontSize: 16));
      case NotificationType.followRefused:
        return Text(
            'Votre demande de follow à ' +
                notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                ' a été refusé',
            style: const TextStyle(fontSize: 16));
      default:
        return Text(
            notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                ' a aimé votre publication',
            style: const TextStyle(fontSize: 16));
    }
  }
}
