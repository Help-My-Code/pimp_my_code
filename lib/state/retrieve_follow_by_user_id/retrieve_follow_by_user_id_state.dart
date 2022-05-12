part of 'retrieve_follow_by_user_id_cubit.dart';

@freezed
class RetrieveFollowByUserIdState with _$RetrieveFollowByUserIdState {
  const factory RetrieveFollowByUserIdState.initial() = _Initial;
  const factory RetrieveFollowByUserIdState.loading() = _Loading;
  const factory RetrieveFollowByUserIdState.loaded(List<Follow> follows) =
      _Loaded;
  const factory RetrieveFollowByUserIdState.failure() = _Failure;
}
