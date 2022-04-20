import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../config/asset.dart';

class CustomAppBarMenu extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBarMenu({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  State<CustomAppBarMenu> createState() => _CustomAppBarMenuState();

  @override
  final Size preferredSize;
}

enum MenuValues { settings, login, logout }

class _CustomAppBarMenuState extends State<CustomAppBarMenu> {
  void printSearch() {
    Alert(
      context: context,
      title: "search".tr(),
      content: Column(
        children: <Widget>[
          TextField(
              decoration: InputDecoration(
            hintText: 'search_user_group'.tr(),
            prefixIcon: const Icon(Icons.search),
          )),
        ],
      ),
      buttons: [
        DialogButton(
          child: const Text(
            "close",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ).tr(),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
        )
      ],
    ).show();
  }

  void printGroups() {
    Alert(
      context: context,
      title: "groups".tr(),
      content: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  child: Icon(Icons.group),
                ),
                TextSpan(
                    text: "   " + "my_groups".tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // TODO afficher groupes
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  child: Icon(Icons.group),
                ),
                TextSpan(
                    text: "   " + "groups_im_member_of".tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // TODO afficher groupes
        ],
      ),
      buttons: [
        DialogButton(
          child: const Text(
            "close",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ).tr(),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
        )
      ],
    ).show();
  }

  void printNotifications() {
    Alert(
      context: context,
      title: "notifications".tr(),
      content: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                print("Container 1 clicked");
              },
              child: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      //TODO mettre l'icone selon de type de notif
                      child: Icon(Icons.thumb_up),
                    ),
                    TextSpan(
                      text: "   Juliette Romarin a aimé votre publication",
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                print("Container 2 clicked");
              },
              child: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.insert_comment),
                    ),
                    TextSpan(
                      text: "   Juliette Romarin a commenté votre publication",
                    ),
                  ],
                ),
              )),
        ],
      ),
      buttons: [
        DialogButton(
          child: const Text(
            "close",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ).tr(),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
        )
      ],
    ).show();
  }

  void onSelectMenu(item) {
    switch (item) {
      case MenuValues.login:
        GoRouter.of(context).go('/login');
        break;
      case MenuValues.logout:
        // TODO déconnecter user
        GoRouter.of(context).go('/login');
        break;
      case MenuValues.settings:
        GoRouter.of(context).go('/settings');
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
      title: const Text('title', style: TextStyle(
          color: Colors.white
      )).tr(),
      iconTheme: const IconThemeData(
          color: Colors.white
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.home),
          tooltip: "home".tr(),
          onPressed: () {
            GoRouter.of(context).go('/');
          },
        ),
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: "search".tr(),
          onPressed: () => printSearch(),
        ),
        IconButton(
          //TODO activer bonne icone selon s'il y a des nouvelles notifs
          icon: const Icon(Icons.notifications_none),
          //icon: const Icon(Icons.notifications_active),
          tooltip: "notifications".tr(),
          onPressed: () => printNotifications(),
        ),
        IconButton(
          icon: const Icon(Icons.mail),
          tooltip: "messaging".tr(),
          onPressed: () {
            GoRouter.of(context).go('/messaging');
          },
        ),
        IconButton(
          icon: const Icon(Icons.account_circle_rounded),
          tooltip: "my_account".tr(),
          onPressed: () {
            GoRouter.of(context).go('/account');
          },
        ),
        IconButton(
          icon: const Icon(Icons.group),
          tooltip: "groups".tr(),
          onPressed: () => printGroups(),
        ),
        PopupMenuButton<MenuValues>(
            icon: const Icon(Icons.more_vert),
            onSelected: onSelectMenu,
            tooltip: "more_options".tr(),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuValues>>[
                  //TODO afficher seulement login ou logout selon
                  PopupMenuItem<MenuValues>(
                    value: MenuValues.login,
                    child: ListTile(
                      leading: const Icon(Icons.login),
                      title: const Text('login').tr(),
                    ),
                  ),
                  PopupMenuItem<MenuValues>(
                    value: MenuValues.logout,
                    child: ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('logout').tr(),
                    ),
                  ),
                  PopupMenuItem<MenuValues>(
                    value: MenuValues.settings,
                    child: ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('settings').tr(),
                    ),
                  )
                ]),
      ],
    );
  }
}
