import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:pimp_my_code/ui/router/routes.dart';

import '../../ioc_container.dart';
import '../../state/login/login_bloc.dart';
import '../../state/register/register_bloc.dart';
import '../../state/session/session_cubit.dart';
import '../pages/account.dart';
import '../pages/home/home.dart';
import '../pages/login/login.dart';
import '../pages/messaging.dart';
import '../pages/register/register.dart';

class AppRouter {
  static String title = 'title'.tr();
  final SessionCubit _sessionCubit;
  GoRouter get router => _goRouter;
  late final GoRouter _goRouter = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: Routes.home.path,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => sl<RetrieveContentCubit>()..loadPublication(),
          child: HomePage(title: title),
        ),
      ),
      GoRoute(
        path: Routes.login.path,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => sl<LoginBloc>(),
          child: LoginPage(title: title),
        ),
      ),
      GoRoute(
        path: Routes.register.path,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => sl<RegisterBloc>(),
          child: RegisterPage(title: title),
        ),
      ),
      GoRoute(
        path: Routes.messaging.path,
        builder: (BuildContext context, GoRouterState state) =>
            MessagingPage(title: title),
      ),
      GoRoute(
        path: Routes.account.path,
        builder: (BuildContext context, GoRouterState state) =>
            AccountPage(title: title),
      ),
    ],
    redirect: (state) {
      final bool isInUnAuthPage = state.location == Routes.login.path ||
          state.location == Routes.register.path;

      if (_sessionCubit.state is UnknownAuthState) {
        // TODO return loading screen
        // return Routes.loading.toPath;
      } else if (!isInUnAuthPage && _sessionCubit.state is Unauthenticated) {
        return Routes.login.path;
      } else if (isInUnAuthPage && _sessionCubit.state is Authenticated) {
        return Routes.home.path;
      }
      return null;
    },
    refreshListenable: GoRouterRefreshStream(_sessionCubit.stream),
  );

  AppRouter(this._sessionCubit);
}
