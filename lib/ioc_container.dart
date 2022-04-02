import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/authentication.dart';

import 'config/env/base.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/usecases/register_use_case.dart';
import 'infrastructure/repositories/api_user_repository.dart';

final sl = GetIt.instance;

Future<void> init(Config config) async {
  sl.registerSingleton(config);
  final ChopperClient chopper = createChopper(config);
  registerInteractor(chopper);
  registerUseCases();
  registerRepositories();
}

void registerInteractor(ChopperClient chopper) {
  sl.registerSingleton(chopper.getService<AuthenticationInteractor>());
}

void registerRepositories() {
  sl.registerSingleton<UserRepository>(ApiUserRepository(sl.get()));
}

void registerUseCases() {
  sl.registerSingleton(RegisterUseCase(sl.get()));
}

ChopperClient createChopper(Config config) {
  return ChopperClient(
    baseUrl: config.baseUrl,
    services: [],
    interceptors: [
      const HeadersInterceptor(
        {'content-type': 'application/json', 'accept': 'application/json'},
      ),
      HttpLoggingInterceptor(),
    ],
    converter: const JsonConverter(),
  );
}
