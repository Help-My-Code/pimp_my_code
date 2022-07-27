import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/config/env/prod.dart';

import 'app.dart';
import 'ioc_container.dart';
import 'state/observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  await init(ProductionConfig());
  BlocOverrides.runZoned(() {
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('fr')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const App(),
      ),
    );
  }, blocObserver: sl.get<AppObserver>());
}
