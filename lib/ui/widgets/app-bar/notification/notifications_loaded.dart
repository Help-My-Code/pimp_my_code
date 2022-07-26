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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.68,
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notif = notifications[index];
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () => _onClick(context, notif),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: <Widget>[
                            Icon(
                              _initIcon(notif),
                              size: MediaQuery.of(context).size.width > 600
                                  ? 26
                                  : 12,
                            ),
                            const SizedBox(width: 10),
                            _initText(context, notif),
                            if (notif.notificationType ==
                                NotificationType.followDemand)
                              _initFollowResultButtons(notif),
                            if (notifications[index].notificationType ==
                                NotificationType.groupJoinDemand)
                              _initJoinGroupResultButtons(notif)
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

  void _onClick(BuildContext context, notification.Notification notif) {
    Navigator.pop(context);
    if (notif.contentLinked != null) {
      GoRouter.of(context)
          .go('${Routes.publication.path}/${notif.contentLinked!}');
      return;
    }
    if (notif.groupLinked != null) {
      GoRouter.of(context)
          .go('${Routes.group.path}?groupId=${notif.groupLinked!.id}');
      return;
    }
    if (notif.userLinked != null) {
      GoRouter.of(context)
          .go('${Routes.account.path}?userId=${notif.userLinked!.id}');
      return;
    }
  }

  IconData _initIcon(notification.Notification notification) {
    switch (notification.notificationType) {
      case NotificationType.dislike:
        return Icons.thumb_down;
      case NotificationType.comment:
        return Icons.comment_outlined;
      case NotificationType.share:
        return Icons.share;
      case NotificationType.groupJoinDemand:
      case NotificationType.groupAccepted:
        return Icons.group_add;
      case NotificationType.groupRefused:
        return Icons.group_remove;
      case NotificationType.followDemand:
      case NotificationType.followAccepted:
        return Icons.person_add;
      case NotificationType.followRefused:
        return Icons.person_remove;
      default:
        return Icons.thumb_up;
    }
  }

  String _getTextForLargeDevice(
    NotificationType type,
    notification.Notification notif,
  ) {
    switch (type) {
      case NotificationType.dislike:
        return '${notif.userLinked!.firstname} ${tr('didnt_like_your_publication')}';
      case NotificationType.comment:
        return '${notif.userLinked!.firstname} + ${tr('commented_your_publication')}';
      case NotificationType.share:
        return '${notif.userLinked!.firstname} ${tr('shared_your_publication')}';
      case NotificationType.groupJoinDemand:
        return '${tr('received_membership_demand_for_group')} ${notif.groupLinked!.name}';
      case NotificationType.groupAccepted:
        return '${tr("membership_demand_for_group")} ${notif.groupLinked!.name} ${tr("was_accepted_feminine")}';
      case NotificationType.groupRefused:
        return '${tr("membership_demand_for_group")} ${notif.groupLinked!.name} ${tr('was_refused_feminine')}';
      case NotificationType.followDemand:
        return '${notif.userLinked!.firstname} ${tr("asks_to_follow_you")}';
      case NotificationType.followRefused:
        return '${tr('follow_request_to')} ${notif.userLinked!.firstname} ${tr("was_refused_masculine")}';
      case NotificationType.followAccepted:
        return '${tr('follow_request_to')} ${notif.userLinked!.firstname} ${tr('was_accepted_masculine')}';
      case NotificationType.like:
        return '${notif.userLinked!.firstname} + ${tr('liked_your_publication')}';
    }
  }

  _initText(BuildContext context, notification.Notification notification) {
    final double fontSize = MediaQuery.of(context).size.width > 600 ? 16 : 12;
    return Text(
      _getTextForLargeDevice(notification.notificationType, notification),
      style: TextStyle(fontSize: fontSize),
    );
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
                context.read<UpdateFollowCubit>().updateFollow(Status.accepted,
                    notification.userLinked!.id, notification.userRecipient.id);
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
                context.read<UpdateFollowCubit>().updateFollow(Status.refused,
                    notification.userLinked!.id, notification.userRecipient.id);
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
