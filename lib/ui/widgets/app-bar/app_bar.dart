import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../config/asset.dart';

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
        leadingWidth: 60,
        leading: Image.asset(Asset.zoomedLogo),
        title: const Text('title', style: TextStyle(color: Colors.white)).tr(),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
