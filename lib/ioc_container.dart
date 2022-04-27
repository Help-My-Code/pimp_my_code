import 'package:chopper/chopper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pimp_my_code/domain/entities/content.dart';
import 'package:pimp_my_code/domain/repositories/content_repository.dart';
import 'package:pimp_my_code/domain/usecases/content/get_following_publication.dart';
import 'package:pimp_my_code/infrastructure/converter/content_mapper.dart';
import 'package:pimp_my_code/infrastructure/repositories/api_content_repository.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/content.dart';
import 'package:pimp_my_code/state/cubit/retrieve_content_cubit.dart';
import 'package:pimp_my_code/state/error_handler/error_handler_bloc.dart';
import 'package:pimp_my_code/state/login/login_bloc.dart';
import 'package:pimp_my_code/state/session/session_cubit.dart';
import 'package:pimp_my_code/ui/router/router.dart';

import 'config/env/base.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/usecases/auth/login_use_case.dart';
import 'domain/usecases/auth/logout_use_case.dart';
import 'domain/usecases/auth/register_use_case.dart';
import 'infrastructure/repositories/api_user_repository.dart';
import 'infrastructure/source/api/command/authentication.dart';
import 'infrastructure/source/api/interceptor/add_token_interceptor.dart';
import 'infrastructure/source/api/interceptor/error_interceptor.dart';
import 'state/observer.dart';
import 'state/register/register_bloc.dart';

final sl = GetIt.instance;

Future<void> init(Config config) async {
  sl.registerSingleton(config);
  sl.registerSingleton(const FlutterSecureStorage());
  final ChopperClient chopper = createChopper(config);
  registerInteractor(chopper);
  registerMapper();
  registerRepositories();
  registerUseCases();
  registerBloc();

  sl.registerSingleton(AppRouter(sl()));
}

void registerInteractor(ChopperClient chopper) {
  sl.registerSingleton(chopper.getService<AuthenticationInteractor>());
  sl.registerSingleton(chopper.getService<ContentInteractor>());
}

void registerMapper() {
  sl.registerFactory(() => ContentMapper());
}

void registerRepositories() {
  sl.registerSingleton<UserRepository>(ApiUserRepository(sl()));
  sl.registerSingleton<ContentRepository>(ApiContentRepository(sl(), sl()));
}

void registerUseCases() {
  sl.registerSingleton(RegisterUseCase(sl()));
  sl.registerSingleton(LoginUseCase(sl(), sl()));
  sl.registerSingleton(LogoutUseCase(sl()));
  sl.registerSingleton(GetFollowingPublicationUseCase(sl()));
}

void registerBloc() {
  sl.registerSingleton(SessionCubit(sl(), sl(), sl()));

  sl.registerFactory(() => RegisterBloc(sl()));
  sl.registerFactory(() => LoginBloc(sl(), sl()));

  sl.registerSingleton(ErrorHandlerBloc());

  sl.registerSingleton(AppObserver(sl(), sl()));
  sl.registerFactory(() => RetrieveContentCubit(sl(), sl()));
}

ChopperClient createChopper(Config config) {
  return ChopperClient(
    baseUrl: config.baseUrl,
    services: [
      AuthenticationInteractor.create(),
      ContentInteractor.create(),
    ],
    interceptors: [
      const HeadersInterceptor(
        {'content-type': 'application/json', 'accept': 'application/json'},
      ),
      HttpLoggingInterceptor(),
      AddTokenInterceptor(sl.get()),
      RequestErrorInterceptor(),
    ],
    converter: const JsonConverter(),
  );
}
