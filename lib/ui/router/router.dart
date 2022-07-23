import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/state/retrieve_publication/retrieve_publication_cubit.dart';

import '../../ioc_container.dart';
import '../../state/like/like_cubit.dart';
import '../../state/login/login_bloc.dart';
import '../../state/post/create_post_cubit.dart';
import '../../state/register/register_bloc.dart';
import '../../state/retrieve_content/retrieve_content_cubit.dart';
import '../../state/retrieve_follow_by_follower_id/retrieve_follow_by_follower_id_cubit.dart';
import '../../state/retrieve_follow_by_user_id/retrieve_follow_by_user_id_cubit.dart';
import '../../state/retrieve_group_by_id/retrieve_group_by_id_cubit.dart';
import '../../state/retrieve_group_members_by_group_id/retrieve_group_members_by_user_id_cubit.dart';
import '../../state/retrieve_user_by_id/retrieve_user_by_id_cubit.dart';
import '../../state/session/session_cubit.dart';
import '../pages/account/account.dart';
import '../pages/group/group.dart';
import '../pages/home/home.dart';
import '../pages/login/login.dart';
import '../pages/messaging.dart';
import '../pages/publication/publication.dart';
import '../pages/register/register.dart';
import 'routes.dart';

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
        path: Routes.publication.path,
        builder: (BuildContext context, GoRouterState state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => RetrievePublicationCubit(sl())
                ..loadPublication(state.params['id']),
            ),
            BlocProvider(
              create: (context) => sl<LikeCubit>(),
            ),
          ],
          child: const Publication(
            allowOwnerActions: true,
          ),
        ),
      ),
      GoRoute(
        path: Routes.messaging.path,
        builder: (BuildContext context, GoRouterState state) =>
            const MessagingPage(),
      ),
      GoRoute(
        path: Routes.account.path,
        builder: (BuildContext context, GoRouterState state) =>
            MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => sl<RetrieveUserByIdCubit>(),
            ),
            BlocProvider(
              create: (context) => sl<RetrieveContentCubit>(),
            ),
            BlocProvider(
              create: (context) => sl<RetrieveFollowByFollowerIdCubit>(),
            ),
            BlocProvider(
              create: (context) => sl<RetrieveFollowByUserIdCubit>(),
            ),
          ],
          child: AccountPage(
            userId: state.queryParams['userId']!,
          ),
        ),
      ),
      GoRoute(
        path: Routes.group.path,
        builder: (BuildContext context, GoRouterState state) =>
            MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => sl<RetrieveGroupByIdCubit>(),
            ),
            BlocProvider(
              create: (context) => sl<RetrieveContentCubit>(),
            ),
            BlocProvider(
              create: (context) => sl<RetrieveGroupMembersByGroupIdCubit>(),
            ),
          ],
          child: GroupPage(
            groupId: state.queryParams['groupId']!,
          ),
        ),
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
