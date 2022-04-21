import 'package:flutter/material.dart';
import 'package:pimp_my_code/ui/pages/register/widgets/register_form.dart';

import '../../widgets/app-bar/app_bar.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

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
            child: RegisterForm(),
          ),
        ),
      ),
    );
  }
}
