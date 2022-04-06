import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:pimp_my_code/config/asset.dart';
import 'package:pimp_my_code/core/form_status.dart';
import 'package:pimp_my_code/state/login/login_bloc.dart';

import '../styles.dart';
import '../validator/validators.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO comment mettre ce code en commun avec la taille variable qui fonctionne (voir app-bar.dart)
      //appBar: CustomAppBar(),
      appBar: _buildAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _buildTitle(),
                _buildEmailField(context),
                _buildPasswordField(context),
                _buildSubmitButton(context),
                _buildGoToRegister(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: const Text(
        'to_login',
        style: TextStyles.bold,
      ).tr(),
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: 500,
        child: TextFormField(
          validator: requiredValidator,
          onChanged: (value) =>
              context.read<LoginBloc>().add(LoginEvent.updateEmail(value)),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'email*'.tr(),
            icon: const Icon(Icons.alternate_email),
          ),
          maxLength: 50,
        ),
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 500,
        child: TextFormField(
          obscureText: true,
          validator: requiredValidator,
          onChanged: (value) =>
              context.read<LoginBloc>().add(LoginEvent.updatePassword(value)),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'password*'.tr(),
            icon: const Icon(Icons.password),
          ),
          maxLength: 20,
        ),
      ),
    );
  }

  Padding _buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 200,
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.status is FormSubmissionSuccessful) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('login_success').tr(),
                backgroundColor: Colors.green,
              ));
            }
            if (state.status is FormSubmissionFailed) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('wrong_credentials').tr(),
                backgroundColor: Theme.of(context).errorColor,
              ));
            }
          },
          builder: (context, state) {
            return FloatingActionButton(
              heroTag: "login",
              onPressed: () {
                if (_formKey.currentState != null &&
                    _formKey.currentState!.validate() &&
                    state.status is FormNotSent) {
                  context.read<LoginBloc>().add(const LoginEvent.submit());
                }
              },
              child: const Text(
                'login',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ).tr(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.grey,
            );
          },
        ),
      ),
    );
  }

  SizedBox _buildGoToRegister(BuildContext context) {
    return SizedBox(
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
