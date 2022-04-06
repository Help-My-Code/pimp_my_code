import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:pimp_my_code/domain/usecases/login_use_case.dart';
import 'package:pimp_my_code/state/login/login_bloc.dart';

import 'config/env/base.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/usecases/register_use_case.dart';
import 'infrastructure/repositories/api_user_repository.dart';
import 'infrastructure/source/api/command/authentication.dart';
import 'state/register/register_bloc.dart';

final sl = GetIt.instance;

Future<void> init(Config config) async {
  sl.registerSingleton(config);
  final ChopperClient chopper = createChopper(config);
  registerInteractor(chopper);
  registerRepositories();
  registerUseCases();
  registerBloc();
}

void registerInteractor(ChopperClient chopper) {
  sl.registerSingleton(chopper.getService<AuthenticationInteractor>());
}

void registerRepositories() {
  sl.registerSingleton<UserRepository>(ApiUserRepository(sl.get()));
}

void registerUseCases() {
  sl.registerSingleton(RegisterUseCase(sl.get()));
  sl.registerSingleton(LoginUseCase(sl.get()));
}

void registerBloc() {
  sl.registerFactory(() => RegisterBloc(sl.get()));
  sl.registerFactory(() => LoginBloc(sl.get()));
}

ChopperClient createChopper(Config config) {
  return ChopperClient(
    baseUrl: config.baseUrl,
    services: [
      AuthenticationInteractor.create(),
    ],
    interceptors: [
      const HeadersInterceptor(
        {'content-type': 'application/json', 'accept': 'application/json'},
      ),
      HttpLoggingInterceptor(),
    ],
    converter: const JsonConverter(),
  );
}
