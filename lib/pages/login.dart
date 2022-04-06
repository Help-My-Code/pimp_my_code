import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pimp_my_code/config/asset.dart';

import '../styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email = '';
  var password = '';

  final _formKey = GlobalKey<FormState>();

  final requiredValidator =
      RequiredValidator(errorText: ('required_field').tr());

  validForm() {
    _formKey.currentState!.validate();
    GoRouter.of(context).go('/');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //TODO comment mettre ce code en commun avec la taille variable qui fonctionne (voir app-bar.dart)
        //appBar: CustomAppBar(),
        appBar: AppBar(
          leadingWidth: 92,
          leading: Image.asset(Asset.logo),
          title: const Text('title').tr(),
          toolbarHeight: 90,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const Text(
                    'to_login',
                    style: TextStyles.bold,
                  ).tr(),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 500,
                    child: TextFormField(
                      validator: requiredValidator,
                      onChanged: (val) => email = val,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'email*'.tr(),
                        icon: const Icon(Icons.alternate_email),
                      ),
                      maxLength: 50,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 500,
                    child: TextFormField(
                      obscureText: true,
                      validator: requiredValidator,
                      onChanged: (val) => password = val,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'password*'.tr(),
                        icon: const Icon(Icons.password),
                      ),
                      maxLength: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    child: FloatingActionButton(
                      heroTag: "login",
                      onPressed: validForm,
                      child: const Text(
                        'login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ).tr(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.amber,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 150,
                    child: FloatingActionButton(
                      heroTag: "register",
                      onPressed: () {
                        GoRouter.of(context).go('/register');
                      },
                      child: const Text(
                        'to_register?',
                        style: TextStyle(color: Colors.black),
                      ).tr(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
