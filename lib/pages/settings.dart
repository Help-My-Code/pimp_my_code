import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pimp_my_code/config/asset.dart';
import 'package:pimp_my_code/pages/app-bar/app_bar_menu.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              centerTitle: false,
              title: const Text('title').tr(),
              leadingWidth: 92,
              leading: Image.asset(Asset.logo),
              toolbarHeight: 90,
              backgroundColor: Colors.grey,
              bottom: const CustomAppBarMenu(),
            ),
            // Other Sliver Widgets
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 800,
                  child: Center(
                    child: Text('Settings'),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
