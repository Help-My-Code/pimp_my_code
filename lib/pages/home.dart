import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pimp_my_code/pages/app-bar/app_bar_menu.dart';

import '../config/asset.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              backgroundColor: Colors.amber,
              bottom: const CustomAppBarMenu(),
            ),
            // Other Sliver Widgets
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 800,
                  child: Center(
                    child: Text('Home'),
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
