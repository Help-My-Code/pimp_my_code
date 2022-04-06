import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../config/asset.dart';
import '../widgets/app-bar/app_bar_menu.dart';

class MessagingPage extends StatefulWidget {
  const MessagingPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MessagingPage> createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Text('Messaging'),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
