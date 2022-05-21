import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/ui/router/routes.dart';
import '../../../../core/form_status.dart';
import '../../../../state/register/register_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../validator/validators.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  bool isValidPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _buildTitle(),
              _buildEmail(context),
              _buildNameField(context),
              _buildFirstnameField(context),
              _buildPassword(context),
              _buildValidationBar(),
              _buildPasswordConfirmation(context, state.password),
              buildRegister(context),
              buildGoToLogin(context),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: const Text(
        'to_register',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ).tr(),
    );
  }

  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 500,
        child: TextFormField(
          validator: emailValidator,
          onChanged: (value) => context
              .read<RegisterBloc>()
              .add(RegisterEvent.updateEmail(value)),
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

  Widget _buildNameField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 500,
        child: TextFormField(
          validator: requiredValidator,
          onChanged: (value) => context
              .read<RegisterBloc>()
              .add(RegisterEvent.updateLastName(value)),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'name*'.tr(),
            icon: const Icon(Icons.assignment_ind),
          ),
          maxLength: 50,
        ),
      ),
    );
  }

  Widget _buildFirstnameField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: 500,
        child: TextFormField(
          validator: requiredValidator,
          onChanged: (value) => context
              .read<RegisterBloc>()
              .add(RegisterEvent.updateFirstName(value)),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'firstname*'.tr(),
            icon: const Icon(Icons.assignment_ind),
          ),
          maxLength: 50,
        ),
      ),
    );
  }

  SizedBox _buildPassword(BuildContext context) {
    return SizedBox(
      width: 500,
      child: TextFormField(
        controller: _passwordController,
        validator: (validator) {
          if (validator!.isEmpty) {
            return 'required_password'.tr();
          }
          if (!isValidPassword) {
            return 'conditions_password'.tr();
          }
          return null;
        },
        obscureText: true,
        onChanged: (value) => context
            .read<RegisterBloc>()
            .add(RegisterEvent.updatePassword(value)),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'password*'.tr(),
          icon: const Icon(Icons.password),
        ),
        maxLength: 20,
      ),
    );
  }

  Widget _buildValidationBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: FlutterPwValidator(
        controller: _passwordController,
        minLength: 8,
        uppercaseCharCount: 1,
        numericCharCount: 1,
        specialCharCount: 1,
        normalCharCount: 1,
        width: 400,
        height: 150,
        onSuccess: () {
          isValidPassword = true;
        },
        onFail: () {
          isValidPassword = false;
        },
      ),
    );
  }

  Widget _buildPasswordConfirmation(BuildContext context, String? password) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 500,
        child: TextFormField(
          obscureText: true,
          validator: (validator) =>
              requiredConfirmPasswordValidator(validator, password),
          onChanged: (value) => context
              .read<RegisterBloc>()
              .add(RegisterEvent.updateConfirmPassword(value)),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'password_confirmation*'.tr(),
            icon: const Icon(Icons.password),
          ),
          maxLength: 20,
        ),
      ),
    );
  }

  Widget buildRegister(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 200,
        child: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if (state.status is FormSubmissionSuccessful) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('register_success').tr(),
                backgroundColor: Colors.green,
              ));
              GoRouter.of(context).go(Routes.home.path);
            }
            if (state.status is FormSubmissionFailed) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('register_failed').tr(),
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
                  context
                      .read<RegisterBloc>()
                      .add(const RegisterEvent.submit());
                }
              },
              child: const Text(
                'registration',
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

  SizedBox buildGoToLogin(BuildContext context) {
    return SizedBox(
      width: 150,
      child: FloatingActionButton(
        heroTag: 'login',
        onPressed: () {
          GoRouter.of(context).go(Routes.login.path);
        },
        child: const Text(
          'to_login?',
          style: TextStyle(color: Colors.black),
        ).tr(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.white,
      ),
    );
  }
}
