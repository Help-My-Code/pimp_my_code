import 'package:flutter/material.dart';
import 'package:pimp_my_code/ui/pages/login/widgets/login_form.dart';

import '../../widgets/app-bar/app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: const SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(20), child: LoginForm()),
        ),
      ),
    );
  }
}
