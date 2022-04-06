import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pimp_my_code/config/asset.dart';
import 'package:pimp_my_code/ui/pages/register/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildAppBar(),
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
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leadingWidth: 92,
      leading: Image.asset(Asset.logo),
      title: const Text('title').tr(),
      toolbarHeight: 90,
      backgroundColor: Colors.grey,
    );
  }
}
