import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../state/retrieve_notifications/retrieve_notifications_cubit.dart';
import '../../loading.dart';
import 'notifications_loaded.dart';

class NotificationModal extends StatelessWidget {
  const NotificationModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BlocConsumer<RetrieveNotificationsCubit, RetrieveNotificationsState>(
              listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              failure: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Failed_to_load_notifications').tr(),
                  backgroundColor: Theme.of(context).errorColor,
                ));
              },
            );
          }, builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                context.read<RetrieveNotificationsCubit>().loadNotifications();
                return const Loading();
              },
              orElse: () => const Loading(),
              loaded: (notifications) => NotificationsLoaded(notifications: notifications),
            );
          }),
        ],
      ),
    );
  }
}
