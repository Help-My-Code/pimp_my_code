import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/state/session/session_cubit.dart';
import 'package:pimp_my_code/ui/router/router.dart';

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
          create: (context) => sl<SessionCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<ErrorHandlerBloc>(),
        ),
      ],
      child: MaterialApp.router(
        locale: context.locale,
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
