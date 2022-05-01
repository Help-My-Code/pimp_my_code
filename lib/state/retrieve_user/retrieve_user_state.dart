part of 'retrieve_user_cubit.dart';

@freezed
class RetrieveUserState with _$RetrieveUserState {
  const factory RetrieveUserState.initial() = _Initial;
  const factory RetrieveUserState.loading() = _Loading;
  const factory RetrieveUserState.loaded(List<User> publications) =
  _Loaded;
  const factory RetrieveUserState.failure() = _Failure;
}
