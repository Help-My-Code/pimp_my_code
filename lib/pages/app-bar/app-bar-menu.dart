import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CustomAppBarMenu extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBarMenu({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  State<CustomAppBarMenu> createState() => _CustomAppBarMenuState();

  @override
  final Size preferredSize;
}

enum MenuValues { settings }

class _CustomAppBarMenuState extends State<CustomAppBarMenu> {
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
            "close_groups",
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
            "close_notifications",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ).tr(),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
        )
      ],
    ).show();
  }

  void onSelectMenu(item) {
    switch (item) {
      case MenuValues.settings:
        GoRouter.of(context).go('/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.grey,
      title: Container(
        width: 450,
        height: 40,
        color: Colors.white,
        child: TextField(
            decoration: InputDecoration(
          hintText: 'search_user_group'.tr(),
          prefixIcon: const Icon(Icons.search),
        )),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            GoRouter.of(context).go('/home');
          },
        ),
        IconButton(
          //TODO activer bonne icone selon s'il y a des nouvelles notifs
          icon: const Icon(Icons.notifications_none),
          //icon: const Icon(Icons.notifications_active),
          onPressed: () => printNotifications(),
        ),
        IconButton(
          icon: const Icon(Icons.mail),
          onPressed: () {
            GoRouter.of(context).go('/messaging');
          },
        ),
        IconButton(
          icon: const Icon(Icons.account_circle_rounded),
          onPressed: () {
            GoRouter.of(context).go('/account');
          },
        ),
        IconButton(
          icon: const Icon(Icons.group),
          onPressed: () => printGroups(),
        ),
        PopupMenuButton<MenuValues>(
            icon: const Icon(Icons.more_vert),
            onSelected: onSelectMenu,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuValues>>[
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
