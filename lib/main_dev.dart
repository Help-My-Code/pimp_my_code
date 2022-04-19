import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/env/dev.dart';
import 'ioc_container.dart';
import 'state/observer.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await init(DeveloppementConfig());
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
