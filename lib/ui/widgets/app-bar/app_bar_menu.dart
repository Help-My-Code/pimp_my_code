import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/state/create_group/create_group_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../config/asset.dart';
import '../../../ioc_container.dart';
import '../../../state/retrieve_group/retrieve_group_cubit.dart';
import '../../../state/retrieve_my_groups/retrieve_my_groups_cubit.dart';
import '../../../state/retrieve_notifications/retrieve_notifications_cubit.dart';
import '../../../state/retrieve_user/retrieve_user_cubit.dart';
import '../../../state/retrive_group_members/retrieve_group_members_cubit.dart';
import '../../../state/see_all_notifications/see_all_notifications_cubit.dart';
import '../../../state/session/session_cubit.dart';
import '../../router/routes.dart';
import '../loading.dart';
import 'group/create_group_modal.dart';
import 'group/group_modal.dart';
import 'notification/notifications_loaded.dart';
import 'search/search_modal.dart';
import '../../../../domain/entities/notification.dart' as notification;

class CustomAppBarMenu extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBarMenu({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  State<CustomAppBarMenu> createState() => _CustomAppBarMenuState();

  @override
  final Size preferredSize;
}

enum MenuValues { login, logout }

class _CustomAppBarMenuState extends State<CustomAppBarMenu> {

  @override
  Widget build(BuildContext context) {
    if (context.read<SessionCubit>().state is! Authenticated) {
      return const Loading();
    }
    context.read<RetrieveNotificationsCubit>().loadNotifications();
    return AppBar(
      backgroundColor: Colors.amber,
      leadingWidth: 60,
      leading: Image.asset(Asset.zoomedLogo),
      automaticallyImplyLeading: true,
      title: const Text('title', style: TextStyle(color: Colors.white)).tr(),
      iconTheme: const IconThemeData(color: Colors.white),
      actions: <Widget>[
        ..._buildVisibleIcons(
          (context.read<SessionCubit>().state as Authenticated).userId,
        ),
        _buildExtras(),
      ],
    );
  }

  void printSearch() {
    Alert(
      context: context,
      title: 'search'.tr(),
      content: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl.get<RetrieveUserCubit>(),
          ),
          BlocProvider(
            create: (context) => sl.get<RetrieveGroupCubit>(),
          ),
        ],
        child: const SearchModal(),
      ),
      buttons: [],
    ).show();
  }

  void printGroups() {
    Alert(
      context: context,
      title: 'groups'.tr(),
      content: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl.get<RetrieveMyGroupsCubit>(),
          ),
          BlocProvider(
            create: (context) => sl.get<RetrieveGroupMembersCubit>(),
          ),
        ],
        child: const GroupModal(),
      ),
      buttons: [
        DialogButton(
          onPressed: () {
            Navigator.pop(context);
            printCreateGroups();
          },
          child: const Text('add_group').tr(),
        ),
      ],
    ).show();
  }

  void printCreateGroups() {
    Alert(
      context: context,
      title: 'add_group'.tr(),
      content: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl.get<CreateGroupBloc>(),
          ),
        ],
        child: const CreateGroupModal(),
      ),
      buttons: [],
    ).show();
  }

  Future<void> printNotifications(List<notification.Notification> notifications, String userId) async {
    await Alert(
      context: context,
      title: 'notifications'.tr(),
      content: BlocProvider(
        create: (context) => sl.get<SeeAllNotificationsCubit>(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NotificationsLoaded(notifications: notifications),
            ],
          ),
        ),
      ),
      buttons: [],
    ).show();
    context.read<RetrieveNotificationsCubit>().loadNotifications();
  }

  void _onSelectMenu(MenuValues item) {
    if (item == MenuValues.logout) {
      context.read<SessionCubit>().logout();
    }
  }

  List<Widget> _buildVisibleIcons(String userId) {
    return [
      IconButton(
        icon: const Icon(Icons.home),
        tooltip: 'home'.tr(),
        onPressed: () {
          GoRouter.of(context).go(Routes.home.path);
        },
      ),
      IconButton(
        icon: const Icon(Icons.search),
        tooltip: 'search'.tr(),
        onPressed: () => printSearch(),
      ),
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
          loaded: (notifications) => _buildNotificationsButton(notifications, userId),
        );
      }),
      IconButton(
        icon: const Icon(Icons.person),
        tooltip: 'my_account'.tr(),
        onPressed: () {
          GoRouter.of(context).go(
            Routes.account.path + '?userId=' + userId,
          );
        },
      ),
      IconButton(
        icon: const Icon(Icons.group),
        tooltip: 'groups'.tr(),
        onPressed: () => printGroups(),
      ),
    ];
  }

  BlocBuilder<SessionCubit, SessionState> _buildExtras() {
    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, state) {
        return PopupMenuButton<MenuValues>(
          icon: const Icon(Icons.more_vert),
          onSelected: _onSelectMenu,
          tooltip: 'more_options'.tr(),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuValues>>[
            if (state is Authenticated)
              PopupMenuItem<MenuValues>(
                value: MenuValues.logout,
                child: ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('logout').tr(),
                ),
              ),
            if (state is Unauthenticated)
              PopupMenuItem<MenuValues>(
                value: MenuValues.login,
                child: ListTile(
                  leading: const Icon(Icons.login),
                  title: const Text('login').tr(),
                ),
              ),
          ],
        );
      },
    );
  }

  _buildNotificationsButton(List<notification.Notification> notifications, String userId) {
    if(hasNewNotifications(notifications)) {
      return IconButton(
        icon: const Icon(Icons.notifications_active),
        color: Colors.deepOrange,
        tooltip: 'notifications'.tr(),
        onPressed: () => printNotifications(notifications, userId),
      );
    }
    return IconButton(
      icon: const Icon(Icons.notifications_none),
      tooltip: 'notifications'.tr(),
      onPressed: () => printNotifications(notifications, userId),
    );
  }

  bool hasNewNotifications(List<notification.Notification> notifications) {
    for(var notification in notifications) {
      if(notification.isSeen == false) {
        return true;
      }
    }
    return false;
  }
}
