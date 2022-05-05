import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/core/form_status.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../state/login/login_bloc.dart';
import '../../../router/routes.dart';
import '../../../styles.dart';
import '../../../validator/validators.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
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
          _buildStubButtonConnection(),
        ],
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
              backgroundColor: Colors.amber,
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
        heroTag: 'register',
        onPressed: () {
          context.go(Routes.register.path);
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

  Widget _buildStubButtonConnection() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextButton(
        onPressed: () {
          context
              .read<LoginBloc>()
              .add(const LoginEvent.updateEmail('example@example.com'));
          context
              .read<LoginBloc>()
              .add(const LoginEvent.updatePassword('azertY1234'));
          context.read<LoginBloc>().add(const LoginEvent.submit());
        },
        child: Text('quick login'.toUpperCase()),
      ),
    );
  }
}
