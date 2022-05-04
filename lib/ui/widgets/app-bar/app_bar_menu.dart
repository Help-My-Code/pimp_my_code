import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/state/retrieve_group/retrieve_group_cubit.dart';
import 'package:pimp_my_code/state/retrieve_my_groups/retrieve_my_groups_cubit.dart';
import 'package:pimp_my_code/state/retrieve_notifications/retrieve_notifications_cubit.dart';
import 'package:pimp_my_code/ui/widgets/app-bar/group/group_modal.dart';
import 'package:pimp_my_code/ui/widgets/app-bar/notification/notification_modal.dart';
import 'package:pimp_my_code/ui/widgets/app-bar/search/search_modal.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../config/asset.dart';
import '../../../ioc_container.dart';
import '../../../state/retrieve_user/retrieve_user_cubit.dart';
import '../../../state/retrive_group_members/retrieve_group_members_cubit.dart';
import '../../../state/session/session_cubit.dart';

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
      case MenuValues.login:
        GoRouter.of(context).go('/login');
        break;
      case MenuValues.logout:
        context.read<SessionCubit>().logout();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amber,
      leadingWidth: 60,
      leading: Image.asset(Asset.zoomedLogo),
      automaticallyImplyLeading: true,
      title: const Text('title', style: TextStyle(color: Colors.white)).tr(),
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
          //TODO activer bonne icone selon s'il y a des nouvelles notifs
          icon: const Icon(Icons.notifications_none),
          //icon: const Icon(Icons.notifications_active),
          tooltip: 'notifications'.tr(),
          onPressed: () => printNotifications(),
        ),
        // TODO Réactiver si mise en place de la messagerie
        /*IconButton(
          icon: const Icon(Icons.mail),
          tooltip: 'messaging'.tr(),
          onPressed: () {
            GoRouter.of(context).go('/messaging');
          },
        ),*/
        IconButton(
          icon: const Icon(Icons.account_circle_rounded),
          tooltip: 'my_account'.tr(),
          onPressed: () {
            GoRouter.of(context).go('/account');
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
  }
}
