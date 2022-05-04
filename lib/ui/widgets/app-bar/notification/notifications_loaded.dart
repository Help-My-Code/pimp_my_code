import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
                  //if(notifications[index].userRole == Role.member)
                  Row(
                    children: <Widget>[
                      const Icon(Icons.thumb_up),
                      /*GFAvatar(
                        size: 20,
                        backgroundImage: NetworkImage(
                          notifications[index].group.principalPictureUrl ??
                              DefaultPictures.defaultUserPicture,
                        ),
                      ),*/
                      const SizedBox(width: 10),
                      Text(notifications[index].notificationType.toString(),
                          style: const TextStyle(fontSize: 16)),
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
}
