import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

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

  final requiredValidator = RequiredValidator(errorText: 'Password is required');

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
                    'Se Connecter',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 500,
                    child: TextFormField(
                      validator: requiredValidator,
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
                    height: 10,
                  ),
                  SizedBox(
                    width: 500,
                    child: TextFormField(
                      obscureText: true,
                      validator: requiredValidator,
                      onChanged: (val) => password = val,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Password *',
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
                      heroTag: "login",
                      onPressed: validForm,
                      child: const Text(
                        'Connexion',
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
                      heroTag: "subscribe",
                      onPressed: () {
                        Navigator.pushNamed(context, '/subscribe');
                      },
                      child: const Text(
                        'S\'inscrire ?',
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
    );
  }
}
