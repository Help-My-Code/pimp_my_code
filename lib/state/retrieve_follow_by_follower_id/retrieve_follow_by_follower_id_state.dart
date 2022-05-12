part of 'retrieve_follow_by_follower_id_cubit.dart';

@freezed
class RetrieveFollowByFollowerIdState with _$RetrieveFollowByFollowerIdState {
  const factory RetrieveFollowByFollowerIdState.initial() = _Initial;
  const factory RetrieveFollowByFollowerIdState.loading() = _Loading;
  const factory RetrieveFollowByFollowerIdState.loaded(List<Follow> followers) =
      _Loaded;
  const factory RetrieveFollowByFollowerIdState.failure() = _Failure;
}
