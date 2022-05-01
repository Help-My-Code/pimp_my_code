import 'package:chopper/chopper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pimp_my_code/domain/services/program_service.dart';
import 'package:pimp_my_code/domain/usecases/content/create_publication_use_case.dart';
import 'package:pimp_my_code/domain/usecases/program/execute_program_use_case.dart';
import 'package:pimp_my_code/infrastructure/services/api_program_service.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/program.dart';
import 'package:pimp_my_code/state/post/create_post_cubit.dart';
import 'package:pimp_my_code/domain/repositories/user_repository.dart';
import 'package:pimp_my_code/domain/usecases/user/find_user_by_name.dart';
import 'package:pimp_my_code/infrastructure/converter/user_mapper.dart';
import 'package:pimp_my_code/infrastructure/repositories/api_user_repository.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/user.dart';
import 'package:pimp_my_code/state/retrieve_group/retrieve_group_cubit.dart';
import 'package:pimp_my_code/state/retrieve_user/retrieve_user_cubit.dart';

import 'config/env/base.dart';
import 'domain/repositories/auth_repository.dart';
import 'domain/repositories/content_repository.dart';
import 'domain/repositories/group_repository.dart';
import 'domain/usecases/auth/login_use_case.dart';
import 'domain/usecases/auth/logout_use_case.dart';
import 'domain/usecases/auth/register_use_case.dart';
import 'domain/usecases/content/get_following_publication.dart';
import 'domain/usecases/group/find_group_by_name.dart';
import 'infrastructure/converter/content_mapper.dart';
import 'infrastructure/converter/group_mapper.dart';
import 'infrastructure/repositories/api_auth_repository.dart';
import 'infrastructure/repositories/api_content_repository.dart';
import 'infrastructure/repositories/api_group_repository.dart';
import 'infrastructure/source/api/command/authentication.dart';
import 'infrastructure/source/api/command/content.dart';
import 'infrastructure/source/api/command/group.dart';
import 'infrastructure/source/api/interceptor/add_token_interceptor.dart';
import 'infrastructure/source/api/interceptor/error_interceptor.dart';
import 'state/error_handler/error_handler_bloc.dart';
import 'state/login/login_bloc.dart';
import 'state/observer.dart';
import 'state/register/register_bloc.dart';
import 'state/retrieve_content/retrieve_content_cubit.dart';
import 'state/session/session_cubit.dart';
import 'ui/router/router.dart';

final sl = GetIt.instance;

Future<void> init(Config config) async {
  sl.registerSingleton(config);
  sl.registerSingleton(const FlutterSecureStorage());
  final ChopperClient chopper = createChopper(config);
  registerInteractor(chopper);
  registerMapper();
  registerServices();
  registerRepositories();
  registerUseCases();
  registerBloc();

  sl.registerSingleton(AppRouter(sl()));
}

void registerInteractor(ChopperClient chopper) {
  sl.registerSingleton(chopper.getService<AuthenticationInteractor>());
  sl.registerSingleton(chopper.getService<ContentInteractor>());
  sl.registerSingleton(chopper.getService<ProgramInteractor>());

  sl.registerSingleton(chopper.getService<UserInteractor>());
  sl.registerSingleton(chopper.getService<GroupInteractor>());
}

void registerMapper() {
  sl.registerFactory(() => ContentMapper());
  sl.registerFactory(() => UserMapper());
  sl.registerFactory(() => GroupMapper(sl()));
}

void registerRepositories() {
  sl.registerSingleton<AuthRepository>(ApiAuthRepository(sl()));
  sl.registerSingleton<ContentRepository>(ApiContentRepository(sl(), sl()));
  sl.registerSingleton<UserRepository>(ApiUserRepository(sl(), sl()));
  sl.registerSingleton<GroupRepository>(ApiGroupRepository(sl(), sl()));
}

void registerServices() {
  sl.registerSingleton<ProgramService>(ApiProgramService(sl()));
}

void registerUseCases() {
  sl.registerSingleton(RegisterUseCase(sl()));
  sl.registerSingleton(LoginUseCase(sl(), sl()));
  sl.registerSingleton(LogoutUseCase(sl()));
  sl.registerSingleton(GetFollowingPublicationUseCase(sl()));
  sl.registerSingleton(FindUserByNameUseCase(sl()));
  sl.registerSingleton(FindGroupByNameUseCase(sl()));
  sl.registerSingleton(ExecuteProgramUseCase(sl()));
  sl.registerSingleton(CreatePublicationUseCase(sl()));
}

void registerBloc() {
  sl.registerSingleton(SessionCubit(sl(), sl(), sl()));

  sl.registerFactory(() => RegisterBloc(sl()));
  sl.registerFactory(() => LoginBloc(sl(), sl()));

  sl.registerSingleton(ErrorHandlerBloc());

  sl.registerSingleton(AppObserver(sl(), sl()));
  sl.registerFactory(() => RetrieveContentCubit(sl(), sl()));
  sl.registerFactory(() => RetrieveUserCubit(sl()));
  sl.registerFactory(() => RetrieveGroupCubit(sl()));

  sl.registerSingleton(CreatePostCubit(sl(), sl()));
}

ChopperClient createChopper(Config config) {
  return ChopperClient(
    baseUrl: config.baseUrl,
    services: [
      AuthenticationInteractor.create(),
      ContentInteractor.create(),
      ProgramInteractor.create(),
      UserInteractor.create(),
      GroupInteractor.create(),
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
