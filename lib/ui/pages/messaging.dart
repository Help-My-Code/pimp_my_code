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
        appBar: const CustomAppBarMenu(),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const <Widget>[Text('MESSAGING')],
                )),
          ),
        ));
  }
}
