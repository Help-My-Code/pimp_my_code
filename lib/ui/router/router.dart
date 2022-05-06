import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/state/post/create_post_cubit.dart';
import 'package:pimp_my_code/ui/router/routes.dart';

import '../../ioc_container.dart';
import '../../state/login/login_bloc.dart';
import '../../state/register/register_bloc.dart';
import '../../state/retrieve_content/retrieve_content_cubit.dart';
import '../../state/retrieve_content_by_user_id/retrieve_content_by_user_id_cubit.dart';
import '../../state/retrieve_user_by_id/retrieve_user_by_id_cubit.dart';
import '../../state/session/session_cubit.dart';
import '../pages/account/account.dart';
import '../pages/home/home.dart';
import '../pages/login/login.dart';
import '../pages/messaging.dart';
import '../pages/register/register.dart';

class AppRouter {
  final SessionCubit _sessionCubit;

  GoRouter get router => _goRouter;
  late final GoRouter _goRouter = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: Routes.home.path,
        builder: (BuildContext context, GoRouterState state) =>
            MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) => sl<RetrieveContentCubit>(),
          ),
          BlocProvider(create: (context) => sl<CreatePostCubit>())
        ], child: const HomePage()),
      ),
      GoRoute(
        path: Routes.login.path,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => sl<LoginBloc>(),
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        path: Routes.register.path,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => sl<RegisterBloc>(),
          child: const RegisterPage(),
        ),
      ),
      GoRoute(
        path: Routes.messaging.path,
        builder: (BuildContext context, GoRouterState state) =>
            const MessagingPage(),
      ),
      GoRoute(
        path: Routes.account.path,
        builder: (BuildContext context, GoRouterState state) => MultiBlocProvider(providers: [
          BlocProvider(
              create: (context) => sl<RetrieveUserByIdCubit>()
          ),
          BlocProvider(
              create: (context) => sl<RetrieveContentByUserIdCubit>()
          ),
        ], child: AccountPage(userId: state.queryParams['userId']!))
      ),
    ],
    redirect: (state) {
      final bool isInUnAuthPage = state.location == Routes.login.path ||
          state.location == Routes.register.path;

      if (!isInUnAuthPage && _sessionCubit.state is Unauthenticated) {
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
