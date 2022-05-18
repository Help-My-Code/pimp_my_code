import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/state/see_all_notifications/see_all_notifications_cubit.dart';
import 'package:pimp_my_code/ui/router/routes.dart';

import '../../../../domain/entities/enum/notification_type.dart';
import '../../../../domain/entities/notification.dart' as notification;

class NotificationsLoaded extends StatelessWidget {
  final List<notification.Notification> notifications;

  const NotificationsLoaded({
    Key? key,
    required this.notifications,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SeeAllNotificationsCubit>().seeAllNotifications();
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.68,
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.pop(context);
                      if(notifications[index].groupLinked != null) {
                        GoRouter.of(context)
                            .go(Routes.group.path + '?groupId=' + notifications[index].groupLinked!.id);
                      }
                      if(notifications[index].userLinked != null) {
                        GoRouter.of(context).go(
                            Routes.account.path + '?userId=' + notifications[index].userLinked!.id);
                      }
                    },
                    child: Row(
                      children: <Widget>[
                        _initIcon(notifications[index]),
                        const SizedBox(width: 10),
                        _initText(notifications[index]),
                      ],
                    ),
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
                'didnt_like_your_publication'.tr(),
            style: const TextStyle(fontSize: 16));
      case NotificationType.comment:
        return Text(
            notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                'commented_your_publication'.tr(),
            style: const TextStyle(fontSize: 16));
      case NotificationType.share:
        return Text(
            notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                'shared_your_publication'.tr(),
            style: const TextStyle(fontSize: 16));
      case NotificationType.groupJoinDemand:
        return Text(
            'received_membership_demand_for_group'.tr() +
                notification.groupLinked!.name,
            style: const TextStyle(fontSize: 16));
      case NotificationType.groupAccepted:
        return Text(
            'membership_demand_for_group'.tr() +
                notification.groupLinked!.name +
                'was_accepted_feminine'.tr(),
            style: const TextStyle(fontSize: 16));
      case NotificationType.groupRefused:
        return Text(
            'membership_demand_for_group'.tr() +
                notification.groupLinked!.name +
                'was_refused_feminine'.tr(),
            style: const TextStyle(fontSize: 16));
      case NotificationType.followDemand:
        return Text(
            notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                'asks_to_follow_you'.tr(),
            style: const TextStyle(fontSize: 16));
      case NotificationType.followAccepted:
        return Text(
            'follow_request_to'.tr() +
                notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                'was_accepted_masculine'.tr(),
            style: const TextStyle(fontSize: 16));
      case NotificationType.followRefused:
        return Text(
            'Votre demande de follow à ' +
                notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                'was_refused_masculine'.tr(),
            style: const TextStyle(fontSize: 16));
      default:
        return Text(
            notification.userLinked!.firstname +
                ' ' +
                notification.userLinked!.lastname +
                'liked_your_publication'.tr(),
            style: const TextStyle(fontSize: 16));
    }
  }
}
