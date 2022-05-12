import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../state/retrieve_group/retrieve_group_cubit.dart';
import '../../../state/retrieve_my_groups/retrieve_my_groups_cubit.dart';
import '../../../state/retrieve_notifications/retrieve_notifications_cubit.dart';
import 'group/group_modal.dart';
import 'notification/notification_modal.dart';
import 'search/search_modal.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../config/asset.dart';
import '../../../ioc_container.dart';
import '../../../state/retrieve_user/retrieve_user_cubit.dart';
import '../../../state/retrive_group_members/retrieve_group_members_cubit.dart';
import '../../../state/session/session_cubit.dart';
import '../../router/routes.dart';
import '../loading.dart';

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
  Future<String>? _userId;
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
      buttons: [],
    ).show();
  }

  void printNotifications() {
    Alert(
      context: context,
      title: 'notifications'.tr(),
      content: BlocProvider(
        create: (context) => sl.get<RetrieveNotificationsCubit>(),
        child: const NotificationModal(),
      ),
      buttons: [],
    ).show();
  }

  void _onSelectMenu(MenuValues item) {
    switch (item) {
      case MenuValues.logout:
        context.read<SessionCubit>().logout();
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _fetch();
  }

  @override
  void didUpdateWidget(covariant CustomAppBarMenu oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (_userId == null) {
      _fetch();
    }
  }

  Future<void> _fetch() => _userId = context.read<SessionCubit>().getUserId();

  @override
  Widget build(BuildContext context) => FutureBuilder<String>(
        future: _userId,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loading();
          }
          if (snapshot.hasError) {
            return SnackBar(
              content: const Text('Failed_to_load_user').tr(),
              backgroundColor: Theme.of(context).errorColor,
            );
          }

          assert(snapshot.hasData);
          final userId = snapshot.data!;
          return AppBar(
            backgroundColor: Colors.amber,
            leadingWidth: 60,
            leading: Image.asset(Asset.zoomedLogo),
            automaticallyImplyLeading: true,
            title:
                const Text('title', style: TextStyle(color: Colors.white)).tr(),
            iconTheme: const IconThemeData(color: Colors.white),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                tooltip: 'home'.tr(),
                onPressed: () {
                  GoRouter.of(context).go('/');
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'search'.tr(),
                onPressed: () => printSearch(),
              ),
              IconButton(
                //TODO activer bonne icone selon s'il y a des nouvelles notifs (voir Badges getwidget)
                icon: const Icon(Icons.notifications_none),
                //icon: const Icon(Icons.notifications_active),
                tooltip: 'notifications'.tr(),
                onPressed: () => printNotifications(),
              ),
              IconButton(
                icon: const Icon(Icons.person),
                tooltip: 'my_account'.tr(),
                onPressed: () {
                  GoRouter.of(context)
                      .go(Routes.account.path + '?userId=' + userId, extra: true);
                },
              ),
              IconButton(
                icon: const Icon(Icons.group),
                tooltip: 'groups'.tr(),
                onPressed: () => printGroups(),
              ),
              BlocBuilder<SessionCubit, SessionState>(
                builder: (context, state) {
                  return PopupMenuButton<MenuValues>(
                    icon: const Icon(Icons.more_vert),
                    onSelected: _onSelectMenu,
                    tooltip: 'more_options'.tr(),
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<MenuValues>>[
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
              ),
            ],
          );
        },
      );
}
