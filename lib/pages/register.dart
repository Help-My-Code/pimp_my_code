import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';

import '../ui/widgets/app-bar/app_bar.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var email = '';
  var name = '';
  var firstname = '';
  var password = '';
  var confirmPassword = '';

  var isValidPassword = false;

  final _formKey = GlobalKey<FormState>();

  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'required_email'.tr()),
    EmailValidator(errorText: 'valid_email'.tr())
  ]);

  final requiredValidator = RequiredValidator(errorText: 'required_field'.tr());

  final TextEditingController controller = TextEditingController();

  validForm() {
    _formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const Text(
                    'to_register',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ).tr(),
                  const SizedBox(height: 20),
                  _buildEmail(),
                  const SizedBox(height: 20),
                  _buildNameField(),
                  const SizedBox(height: 20),
                  _buildFirstnameField(),
                  const SizedBox(height: 10),
                  _buildRequiredPassword(),
                  FlutterPwValidator(
                    controller: controller,
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
                  const SizedBox(height: 10),
                  _buildPasswordConfirmation(),
                  const SizedBox(height: 20),
                  buildRegister(),
                  const SizedBox(height: 20),
                  buildGoToLogin(context),
                ],
              ),
            ),
          ),
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
          GoRouter.of(context).go('/login');
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

  SizedBox buildRegister() {
    return SizedBox(
      width: 200,
      child: FloatingActionButton(
        heroTag: 'register',
        onPressed: validForm,
        child: const Text(
          'registration',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ).tr(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }

  SizedBox _buildPasswordConfirmation() {
    return SizedBox(
      width: 500,
      child: TextFormField(
        obscureText: true,
        validator: (validator) {
          if (validator!.isEmpty) {
            return 'required_password_confirmation'.tr();
          }
          if (validator != password) {
            return 'password_dont_match'.tr();
          }
          return null;
        },
        onChanged: (val) {
          confirmPassword = val;
        },
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'password_confirmation*'.tr(),
          icon: const Icon(Icons.password),
        ),
        maxLength: 20,
      ),
    );
  }

  SizedBox _buildRequiredPassword() {
    return SizedBox(
      width: 500,
      child: TextFormField(
        controller: controller,
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
        onChanged: (val) => password = val,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'password*'.tr(),
          icon: const Icon(Icons.password),
        ),
        maxLength: 20,
      ),
    );
  }

  SizedBox _buildFirstnameField() {
    return SizedBox(
      width: 500,
      child: TextFormField(
        validator: requiredValidator,
        onChanged: (val) => firstname = val,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'firstname*'.tr(),
          icon: const Icon(Icons.assignment_ind),
        ),
        maxLength: 50,
      ),
    );
  }

  SizedBox _buildNameField() {
    return SizedBox(
      width: 500,
      child: TextFormField(
        validator: requiredValidator,
        onChanged: (val) => name = val,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'name*'.tr(),
          icon: const Icon(Icons.assignment_ind),
        ),
        maxLength: 50,
      ),
    );
  }

  SizedBox _buildEmail() {
    return SizedBox(
      width: 500,
      child: TextFormField(
        validator: emailValidator,
        onChanged: (val) => email = val,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'email*'.tr(),
          icon: const Icon(Icons.alternate_email),
        ),
        maxLength: 50,
      ),
    );
  }
}
