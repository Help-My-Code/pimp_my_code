import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class SubscribePage extends StatefulWidget {
  const SubscribePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SubscribePage> createState() => _SubscribePageState();
}

class _SubscribePageState extends State<SubscribePage> {
  var email = '';
  var name = '';
  var firstname = '';
  var password = '';
  var confirmPassword = '';

  var isValidPassword = false;

  final _formKey = GlobalKey<FormState>();

  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    EmailValidator(errorText: 'Please enter a valid email')
  ]);

  final requiredValidator =
      RequiredValidator(errorText: 'This field is required');

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    MatchingPasswordValidator()
  ]);

  final TextEditingController controller = new TextEditingController();

  validForm() {
    _formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pimp My Code'),
          backgroundColor: Colors.grey,
        ),
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
                      'S\'inscrire',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 500,
                      child: TextFormField(
                        validator: emailValidator,
                        onChanged: (val) => email = val,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: 'Email *',
                          icon: Icon(Icons.alternate_email),
                        ),
                        maxLength: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 500,
                      child: TextFormField(
                        validator: requiredValidator,
                        onChanged: (val) => name = val,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: 'Name *',
                          icon: Icon(Icons.assignment_ind),
                        ),
                        maxLength: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 500,
                      child: TextFormField(
                        validator: requiredValidator,
                        onChanged: (val) => firstname = val,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: 'FirstName *',
                          icon: Icon(Icons.assignment_ind),
                        ),
                        maxLength: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 500,
                      child: TextFormField(
                        controller: controller,
                        validator: (validator) {
                          if(validator!.isEmpty) {
                            return 'Password is required';
                          }
                          if (!isValidPassword) {
                            return 'Please respect password conditions';
                          }
                          return null;
                        },
                        obscureText: true,
                        onChanged: (val) => password = val,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: 'Password *',
                          icon: Icon(Icons.password),
                        ),
                        maxLength: 20,
                      ),
                    ),
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
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 500,
                      child: TextFormField(
                        obscureText: true,
                        validator: (validator) {
                          if(validator!.isEmpty) {
                            return 'Password confirmation is required';
                          }
                          if (validator != password) {
                            return 'The passwords do not match';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          confirmPassword = val;
                        },
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password *',
                          icon: Icon(Icons.password),
                        ),
                        maxLength: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 200,
                      child: FloatingActionButton(
                        heroTag: "subscribe",
                        onPressed: validForm,
                        child: const Text(
                          'Inscription',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: FloatingActionButton(
                        heroTag: "login",
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: const Text(
                          'Se connecter ?',
                          style: TextStyle(color: Colors.black),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MatchingPasswordValidator extends TextFieldValidator {
  MatchingPasswordValidator({String errorText = 'Passwords are not similars'})
      : super(errorText);

  @override
  bool get ignoreEmptyValues => true;

  @override
  bool isValid(String? value) {
    return "1" == value;
  }
}
