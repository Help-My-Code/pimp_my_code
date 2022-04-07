import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pimp_my_code/config/asset.dart';
import 'package:pimp_my_code/ui/pages/login/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO comment mettre ce code en commun avec la taille variable qui fonctionne (voir app-bar.dart)
      //appBar: CustomAppBar(),
      appBar: _buildAppBar(),
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

  AppBar _buildAppBar() {
    return AppBar(
      leadingWidth: 92,
      leading: Image.asset(Asset.logo),
      title: const Text('title').tr(),
      toolbarHeight: 90,
      backgroundColor: Colors.amber,
    );
  }
}
