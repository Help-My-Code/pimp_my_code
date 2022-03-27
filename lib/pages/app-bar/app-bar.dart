import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  final Size preferredSize;
}

class _CustomAppBarState extends State<CustomAppBar> {

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100.0),
      child: AppBar(
        leadingWidth: 92,
        leading: Image.asset(
          "images/pimp-my-code-logo.png",
        ),
        title: const Text('title').tr(),
        toolbarHeight: 90,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
