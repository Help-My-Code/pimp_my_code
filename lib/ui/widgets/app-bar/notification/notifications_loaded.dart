import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/domain/entities/enum/status.dart';
import 'package:pimp_my_code/state/see_all_notifications/see_all_notifications_cubit.dart';
import 'package:pimp_my_code/ui/router/routes.dart';

import '../../../../domain/entities/enum/notification_type.dart';
import '../../../../domain/entities/notification.dart' as notification;
import '../../../../state/update_follow/update_follow_cubit.dart';
import '../../../../state/update_group_member/update_group_member_cubit.dart';

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
                      if (notifications[index].groupLinked != null) {
                        GoRouter.of(context).go(Routes.group.path +
                            '?groupId=' +
                            notifications[index].groupLinked!.id);
                      }
                      if (notifications[index].userLinked != null) {
                        GoRouter.of(context).go(Routes.account.path +
                            '?userId=' +
                            notifications[index].userLinked!.id);
                      }
                    },
                    child: Row(
                      children: <Widget>[
                        _initIcon(notifications[index]),
                        const SizedBox(width: 10),
                        _initText(notifications[index]),
                        if (notifications[index].notificationType ==
                            NotificationType.followDemand)
                          _initFollowResultButtons(notifications[index]),
                        if (notifications[index].notificationType ==
                            NotificationType.groupJoinDemand)
                          _initJoinGroupResultButtons(notifications[index])
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

  _initFollowResultButtons(notification.Notification notification) {
    return BlocConsumer<UpdateFollowCubit, UpdateFollowState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            failure: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('failed_to_update_follow').tr(),
                backgroundColor: Theme.of(context).errorColor,
              ));
              Navigator.pop(context);
            },
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('follow_updated_successful').tr(),
                backgroundColor: Colors.green,
              ));
              Navigator.pop(context);
            });
      },
      builder: (context, state) {
        return Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            GFIconButton(
              onPressed: () async {
                context.read<UpdateFollowCubit>().updateFollow(
                    Status.accepted,
                    notification.userLinked!.id,
                    notification.userRecipient.id);
              },
              tooltip: 'accept'.tr(),
              color: Colors.amber,
              icon: const Icon(Icons.check, color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            GFIconButton(
              onPressed: () async {
                context.read<UpdateFollowCubit>().updateFollow(
                    Status.refused,
                    notification.userLinked!.id,
                    notification.userRecipient.id);
              },
              tooltip: 'refuse'.tr(),
              color: Colors.deepOrange,
              icon: const Icon(Icons.cancel, color: Colors.white),
            ),
          ],
        );
      },
    );
  }

  _initJoinGroupResultButtons(notification.Notification notification) {
    return BlocConsumer<UpdateGroupMemberCubit, UpdateGroupMemberState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            failure: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('failed_to_update_group_member').tr(),
                backgroundColor: Theme.of(context).errorColor,
              ));
              Navigator.pop(context);
            },
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('group_member_updated_successful').tr(),
                backgroundColor: Colors.green,
              ));
              Navigator.pop(context);
            });
      },
      builder: (context, state) {
        return Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            GFIconButton(
              onPressed: () async {
                context.read<UpdateGroupMemberCubit>().updateGroupMember(
                    Status.accepted,
                    notification.userLinked!.id,
                    notification.groupLinked!.id);
              },
              tooltip: 'accept'.tr(),
              color: Colors.amber,
              icon: const Icon(Icons.check, color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            GFIconButton(
              onPressed: () async {
                context.read<UpdateGroupMemberCubit>().updateGroupMember(
                    Status.refused,
                    notification.userLinked!.id,
                    notification.groupLinked!.id);
              },
              tooltip: 'refuse'.tr(),
              color: Colors.deepOrange,
              icon: const Icon(Icons.cancel, color: Colors.white),
            ),
          ],
        );
      },
    );
  }
}
