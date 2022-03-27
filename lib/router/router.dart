import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/pages/account.dart';
import 'package:pimp_my_code/pages/home.dart';
import 'package:pimp_my_code/pages/messaging.dart';
import 'package:pimp_my_code/pages/register.dart';
import 'package:pimp_my_code/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:pimp_my_code/pages/settings.dart';

class PmcRouter {
  static const title = 'Pimp My Code';

  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const LoginPage(title: title),
      ),
      GoRoute(
        path: '/register',
        builder: (BuildContext context, GoRouterState state) => const RegisterPage(title: title),
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) => const HomePage(title: title),
      ),
      GoRoute(
        path: '/messaging',
        builder: (BuildContext context, GoRouterState state) => const MessagingPage(title: title),
      ),
      GoRoute(
        path: '/account',
        builder: (BuildContext context, GoRouterState state) => const AccountPage(title: title),
      ),
      GoRoute(
        path: '/settings',
        builder: (BuildContext context, GoRouterState state) => const SettingsPage(title: title),
      ),
    ],
  );
}
