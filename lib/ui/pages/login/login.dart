import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pimp_my_code/config/asset.dart';
import 'package:pimp_my_code/ui/pages/login/widgets/login_form.dart';

import '../../widgets/app-bar/app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: LoginForm()
          ),
        ),
      ),
    );
  }
}
