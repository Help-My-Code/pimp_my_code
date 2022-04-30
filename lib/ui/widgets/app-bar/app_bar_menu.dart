import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/state/session/session_cubit.dart';
import 'package:pimp_my_code/ui/widgets/pop-ups/search_popup.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../config/asset.dart';
import '../../../state/retrieve_user/retrieve_user_cubit.dart';
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
  void printSearch() {

    List users = [];

    List groups = [];

    Alert(
      context: context,
      title: 'search'.tr(),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            onChanged: (text) {
              print(text);
              //TODO recherche utilisateur et groupes
            },
              decoration: InputDecoration(
            hintText: 'search_user_group'.tr(),
            prefixIcon: const Icon(Icons.search),
          )),
          const SizedBox(height: 20),
          BlocConsumer<RetrieveUserCubit, RetrieveUserState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                failure: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Failed_to_load_publications').tr(),
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                initial: () {
                  context.read<RetrieveUserCubit>().loadPublication();
                  return const Loading();
                },
                orElse: () => const Loading(),
                //loaded: (publications) => HomeLoaded(publications: publications),
              );
            },
          ),
          //TODO
          //if(users.isNotEmpty)
          const Text('users').tr(),
          const SizedBox(height: 10),
          Row(
            children: const <Widget>[
              GFAvatar(
                size: 20,
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg'),
              ),
              SizedBox(width: 10),
              Text('Hubert Delarue',
                style: TextStyle(fontSize: 16)),
            ],
          ),
          const SizedBox(height: 10),
          //if(groups.isNotEmpty)
          const Text('groups').tr(),
          const SizedBox(height: 10),
          Row(
            children: const <Widget>[
              GFAvatar(
                size: 20,
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg'),
              ),
              SizedBox(width: 10),
              Text('Entraide node',
                  style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
      buttons: [],
    ).show();
  }

  void printGroups() {
    Alert(
      context: context,
      title: 'groups'.tr(),
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
                  text: '   ' + 'my_groups'.tr(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
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
                  text: '   ' + 'groups_im_member_of'.tr(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // TODO afficher groupes
        ],
      ),
      buttons: [],
    ).show();
  }

  void printNotifications() {
    Alert(
      context: context,
      title: 'notifications'.tr(),
      content: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                print('Container 1 clicked');
              },
              child: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      //TODO mettre l'icone selon de type de notif
                      child: Icon(Icons.thumb_up),
                    ),
                    TextSpan(
                      text: '   Juliette Romarin a aimé votre publication',
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                print('Container 2 clicked');
              },
              child: RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.insert_comment),
                    ),
                    TextSpan(
                      text: '   Juliette Romarin a commenté votre publication',
                    ),
                  ],
                ),
              )),
        ],
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
        IconButton(
          icon: const Icon(Icons.mail),
          tooltip: 'messaging'.tr(),
          onPressed: () {
            GoRouter.of(context).go('/messaging');
          },
        ),
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
