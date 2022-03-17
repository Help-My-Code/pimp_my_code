import 'package:flutter/material.dart';
import 'package:pimp_my_code/subscribe.dart';
import 'package:pimp_my_code/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const title = 'Pimp My Code';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pimp My Code',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(title: title),
        '/subscribe': (context) => const SubscribePage(title: title),
      },
    );
  }
}
