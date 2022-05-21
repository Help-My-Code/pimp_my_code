part of 'update_follow_cubit.dart';

@freezed
class UpdateFollowState with _$UpdateFollowState {
  const factory UpdateFollowState.initial() = _Initial;
  const factory UpdateFollowState.loading() = _Loading;
  const factory UpdateFollowState.failure() = _Failure;
  const factory UpdateFollowState.success() = _Success;
}
