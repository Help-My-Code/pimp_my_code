import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../config/asset.dart';
import '../widgets/app-bar/app_bar_menu.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
                padding: EdgeInsets.all(20),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const <Widget>[Text("ACCOUNT")],
                  ),
                )),
          ),
        ));
  }
}
