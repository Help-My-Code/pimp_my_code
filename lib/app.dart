import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/state/retrieve_notifications/retrieve_notifications_cubit.dart';
import 'state/session/session_cubit.dart';
import 'ui/router/router.dart';

import 'ioc_container.dart';
import 'state/error_handler/error_handler_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = sl<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<RetrieveNotificationsCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<SessionCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<ErrorHandlerBloc>(),
        ),
      ],
      child: MaterialApp.router(
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        routeInformationParser: router.router.routeInformationParser,
        routerDelegate: router.router.routerDelegate,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
      ),
    );
  }
}
