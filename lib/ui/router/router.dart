import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:pimp_my_code/state/login/login_bloc.dart';

import '../../ioc_container.dart';
import '../pages/account.dart';
import '../pages/home.dart';
import '../pages/login.dart';
import '../pages/messaging.dart';
import '../pages/register/register.dart';
import '../pages/settings.dart';

class PmcRouter {
  static const title = 'Pimp My Code';

  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(title: title),
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => sl.get<LoginBloc>(),
          child: LoginPage(title: title),
        ),
      ),
      GoRoute(
        path: '/register',
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterPage(title: title),
      ),
      GoRoute(
        path: '/messaging',
        builder: (BuildContext context, GoRouterState state) =>
            const MessagingPage(title: title),
      ),
      GoRoute(
        path: '/account',
        builder: (BuildContext context, GoRouterState state) =>
            const AccountPage(title: title),
      ),
      GoRoute(
        path: '/settings',
        builder: (BuildContext context, GoRouterState state) =>
            const SettingsPage(title: title),
      ),
    ],
  );
}
