import 'package:chopper/chopper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pimp_my_code/domain/usecases/content/delete_publication.dart';
import 'package:pimp_my_code/domain/usecases/content/update_content.dart';
import 'package:pimp_my_code/domain/usecases/follow/create_follow.dart';
import 'package:pimp_my_code/domain/usecases/follow/delete_follow.dart';
import 'package:pimp_my_code/domain/usecases/follow/update_follow.dart';
import 'package:pimp_my_code/domain/usecases/group-member/find_group_members_by_group_id.dart';
import 'package:pimp_my_code/domain/usecases/group-member/update_group_member.dart';
import 'package:pimp_my_code/domain/usecases/group/create_group.dart';
import 'package:pimp_my_code/domain/usecases/group/find_group_by_id.dart';
import 'package:pimp_my_code/domain/usecases/user/update_user_use_case.dart';
import 'package:pimp_my_code/infrastructure/source/api/command/user_like.dart';
import 'package:pimp_my_code/state/create_group/create_group_bloc.dart';
import 'package:pimp_my_code/state/delete_content/delete_content_cubit.dart';
import 'package:pimp_my_code/state/delete_group/delete_group_cubit.dart';
import 'package:pimp_my_code/state/follow_user/follow_user_bloc.dart';
import 'package:pimp_my_code/state/join_group/join_group_bloc.dart';
import 'package:pimp_my_code/state/quit_group/quit_group_bloc.dart';
import 'package:pimp_my_code/state/retrieve_group_by_id/retrieve_group_by_id_cubit.dart';
import 'package:pimp_my_code/state/retrieve_group_members_by_group_id/retrieve_group_members_by_user_id_cubit.dart';
import 'package:pimp_my_code/state/retrieve_publication/retrieve_publication_cubit.dart';
import 'package:pimp_my_code/state/see_all_notifications/see_all_notifications_cubit.dart';
import 'package:pimp_my_code/state/unfollow_user/unfollow_user_bloc.dart';
import 'package:pimp_my_code/state/update_content/update_content_bloc.dart';
import 'package:pimp_my_code/state/update_follow/update_follow_cubit.dart';
import 'package:pimp_my_code/state/update_group/update_group_bloc.dart';
import 'package:pimp_my_code/state/update_group_member/update_group_member_cubit.dart';
import 'package:pimp_my_code/state/update_user/update_user_bloc.dart';
import 'domain/repositories/follow_repository.dart';
import 'domain/repositories/group_member_repository.dart';
import 'domain/repositories/notification_repository.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/services/program_service.dart';
import 'domain/usecases/content/create_publication_use_case.dart';
import 'domain/usecases/content/get_publications_by_group_id.dart';
import 'domain/usecases/follow/find_follow_by_follower_id.dart';
import 'domain/usecases/group-member/create_group_member.dart';
import 'domain/usecases/group-member/delete_group_member.dart';
import 'domain/usecases/group/delete_group.dart';
import 'domain/usecases/group/find_my_groups.dart';
import 'domain/usecases/group/update_group.dart';
import 'domain/usecases/notification/find_notifications.dart';
import 'domain/usecases/notification/see_all_notifications.dart';
import 'domain/usecases/program/execute_program_use_case.dart';
import 'domain/usecases/user/find_user_by_id.dart';
import 'domain/usecases/user/find_user_by_name.dart';
import 'infrastructure/converter/group_member_mapper.dart';
import 'infrastructure/converter/notification_mapper.dart';
import 'infrastructure/converter/user_mapper.dart';
import 'infrastructure/repositories/api_follow_repository.dart';
import 'infrastructure/repositories/api_group_member_repository.dart';
import 'infrastructure/repositories/api_notification_repository.dart';
import 'infrastructure/repositories/api_user_repository.dart';
import 'infrastructure/services/api_program_service.dart';
import 'infrastructure/source/api/command/group_member.dart';
import 'infrastructure/source/api/command/program.dart';
import 'infrastructure/source/api/command/user.dart';
import 'state/post/create_post_cubit.dart';
import 'state/retrieve_follow_by_follower_id/retrieve_follow_by_follower_id_cubit.dart';
import 'state/retrieve_follow_by_user_id/retrieve_follow_by_user_id_cubit.dart';
import 'state/retrieve_group/retrieve_group_cubit.dart';
import 'state/retrieve_my_groups/retrieve_my_groups_cubit.dart';
import 'state/retrieve_notifications/retrieve_notifications_cubit.dart';
import 'state/retrieve_user/retrieve_user_cubit.dart';
import 'state/retrieve_user_by_id/retrieve_user_by_id_cubit.dart';
import 'state/retrive_group_members/retrieve_group_members_cubit.dart';

import 'config/env/base.dart';
import 'domain/repositories/auth_repository.dart';
import 'domain/repositories/content_repository.dart';
import 'domain/repositories/group_repository.dart';
import 'domain/usecases/auth/login_use_case.dart';
import 'domain/usecases/auth/logout_use_case.dart';
import 'domain/usecases/auth/register_use_case.dart';
import 'domain/usecases/content/get_following_publication.dart';
import 'domain/usecases/content/get_publications_by_user_id.dart';
import 'domain/usecases/follow/find_follow_by_user_id.dart';
import 'domain/usecases/group-member/find_group_members.dart';
import 'domain/usecases/group/find_group_by_name.dart';
import 'infrastructure/converter/content_mapper.dart';
import 'infrastructure/converter/follow_mapper.dart';
import 'infrastructure/converter/group_mapper.dart';
import 'infrastructure/repositories/api_auth_repository.dart';
import 'infrastructure/repositories/api_content_repository.dart';
import 'infrastructure/repositories/api_group_repository.dart';
import 'infrastructure/source/api/command/authentication.dart';
import 'infrastructure/source/api/command/content.dart';
import 'infrastructure/source/api/command/follow.dart';
import 'infrastructure/source/api/command/group.dart';
import 'infrastructure/source/api/command/notification.dart';
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
  sl.registerSingleton(chopper.getService<GroupMemberInteractor>());
  sl.registerSingleton(chopper.getService<NotificationInteractor>());
  sl.registerSingleton(chopper.getService<FollowInteractor>());
  sl.registerSingleton(chopper.getService<UserLikeInteractor>());
}

void registerMapper() {
  sl.registerFactory(() => ContentMapper(sl()));
  sl.registerFactory(() => UserMapper());
  sl.registerFactory(() => GroupMapper(sl()));
  sl.registerFactory(() => GroupMemberMapper(sl(), sl()));
  sl.registerFactory(() => NotificationMapper(sl(), sl()));
  sl.registerFactory(() => FollowMapper(sl()));
}

void registerRepositories() {
  sl.registerSingleton<AuthRepository>(ApiAuthRepository(sl(), sl()));
  sl.registerSingleton<ContentRepository>(
      ApiContentRepository(sl(), sl(), sl()));
  sl.registerSingleton<UserRepository>(ApiUserRepository(sl(), sl()));
  sl.registerSingleton<GroupRepository>(ApiGroupRepository(sl(), sl()));
  sl.registerSingleton<GroupMemberRepository>(
      ApiGroupMemberRepository(sl(), sl()));
  sl.registerSingleton<NotificationRepository>(
      ApiNotificationRepository(sl(), sl()));
  sl.registerSingleton<FollowRepository>(ApiFollowRepository(sl(), sl()));
}

void registerServices() {
  sl.registerSingleton<ProgramService>(ApiProgramService(sl()));
}

void registerUseCases() {
  sl.registerSingleton(RegisterUseCase(sl()));
  sl.registerSingleton(LoginUseCase(sl(), sl()));
  sl.registerSingleton(LogoutUseCase(sl()));
  sl.registerSingleton(GetFollowingPublicationUseCase(sl()));
  sl.registerSingleton(ExecuteProgramUseCase(sl()));
  sl.registerSingleton(CreatePublicationUseCase(sl()));
  sl.registerSingleton(FindUserByNameUseCase(sl()));
  sl.registerSingleton(FindGroupByNameUseCase(sl()));
  sl.registerSingleton(FindMyGroupsUseCase(sl()));
  sl.registerSingleton(FindGroupMembersUseCase(sl()));
  sl.registerSingleton(FindNotificationsUseCase(sl()));
  sl.registerSingleton(SeeAllNotificationsUseCase(sl()));
  sl.registerSingleton(FindUserByIdUseCase(sl()));
  sl.registerSingleton(GetPublicationsByUserIdUseCase(sl()));
  sl.registerSingleton(GetPublicationsByGroupIdUseCase(sl()));
  sl.registerSingleton(FindFollowByFollowerIdUseCase(sl()));
  sl.registerSingleton(FindFollowByUserIdUseCase(sl()));
  sl.registerSingleton(UpdateUserUseCase(sl()));
  sl.registerSingleton(UpdateGroupUseCase(sl()));
  sl.registerSingleton(CreateFollowUseCase(sl()));
  sl.registerSingleton(CreateGroupMemberUseCase(sl()));
  sl.registerSingleton(DeleteFollowUseCase(sl()));
  sl.registerSingleton(DeleteGroupMemberUseCase(sl()));
  sl.registerSingleton(DeleteContentUseCase(sl()));
  sl.registerSingleton(UpdateContentUseCase(sl()));
  sl.registerSingleton(FindGroupByIdUseCase(sl()));
  sl.registerSingleton(FindGroupMembersByGroupIdUseCase(sl()));
  sl.registerSingleton(CreateGroupUseCase(sl()));
  sl.registerSingleton(DeleteGroupUseCase(sl()));
  sl.registerSingleton(UpdateFollowUseCase(sl()));
  sl.registerSingleton(UpdateGroupMemberUseCase(sl()));
}

void registerBloc() {
  sl.registerSingleton(SessionCubit(sl(), sl(), sl()));
  sl.registerFactory(() => RegisterBloc(sl()));
  sl.registerFactory(() => LoginBloc(sl(), sl()));
  sl.registerSingleton(ErrorHandlerBloc());
  sl.registerSingleton(AppObserver(sl(), sl()));
  sl.registerFactory(() => RetrieveContentCubit(sl(), sl(), sl(), sl(), sl()));
  sl.registerFactory(() => CreatePostCubit(sl(), sl()));
  sl.registerFactory(() => RetrieveUserCubit(sl()));
  sl.registerFactory(() => RetrieveGroupCubit(sl()));
  sl.registerFactory(() => RetrieveMyGroupsCubit(sl(), sl()));
  sl.registerFactory(() => RetrieveGroupMembersCubit(sl(), sl()));
  sl.registerFactory(() => RetrieveNotificationsCubit(sl(), sl()));
  sl.registerFactory(() => RetrieveUserByIdCubit(sl()));
  sl.registerFactory(() => RetrieveFollowByFollowerIdCubit(sl()));
  sl.registerFactory(() => RetrieveFollowByUserIdCubit(sl()));
  sl.registerFactory(() => RetrievePublicationCubit(sl()));
  sl.registerFactory(() => UpdateUserBloc(sl(), sl()));
  sl.registerFactory(() => UpdateGroupBloc(sl()));
  sl.registerFactory(() => FollowUserBloc(sl(), sl()));
  sl.registerFactory(() => JoinGroupBloc(sl(), sl()));
  sl.registerFactory(() => UnfollowUserBloc(sl(), sl()));
  sl.registerFactory(() => QuitGroupBloc(sl(), sl()));
  sl.registerFactory(() => RetrieveGroupByIdCubit(sl()));
  sl.registerFactory(() => RetrieveGroupMembersByGroupIdCubit(sl()));
  sl.registerFactory(() => CreateGroupBloc(sl()));
  sl.registerFactory(() => SeeAllNotificationsCubit(sl(), sl()));
  sl.registerFactory(() => DeleteGroupCubit(sl()));
  sl.registerFactory(() => DeleteContentCubit(sl()));
  sl.registerFactory(() => UpdateFollowCubit(sl()));
  sl.registerFactory(() => UpdateContentBloc(sl()));
  sl.registerFactory(() => UpdateGroupMemberCubit(sl()));
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
      GroupMemberInteractor.create(),
      NotificationInteractor.create(),
      FollowInteractor.create(),
      UserLikeInteractor.create(),
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
