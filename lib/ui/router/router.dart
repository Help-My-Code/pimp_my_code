import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../pages/account.dart';
import '../pages/home.dart';
import '../pages/login.dart';
import '../pages/messaging.dart';
import '../pages/register/register.dart';
import '../pages/settings.dart';

class PmcRouter {
  static String title = 'title'.tr();

  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            HomePage(title: title),
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) =>
            LoginPage(title: title),
      ),
      GoRoute(
        path: '/register',
        builder: (BuildContext context, GoRouterState state) =>
            RegisterPage(title: title),
      ),
      GoRoute(
        path: '/messaging',
        builder: (BuildContext context, GoRouterState state) =>
            MessagingPage(title: title),
      ),
      GoRoute(
        path: '/account',
        builder: (BuildContext context, GoRouterState state) =>
            AccountPage(title: title),
      ),
      GoRoute(
        path: '/settings',
        builder: (BuildContext context, GoRouterState state) =>
            SettingsPage(title: title),
      ),
    ],
  );
}
