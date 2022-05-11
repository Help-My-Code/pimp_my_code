part of 'unfollow_user_bloc.dart';

@freezed
class UnfollowUserState with _$UnfollowUserState {
  const factory UnfollowUserState.state({
    @Default(FormNotSent()) FormStatus status,
  }) = _State;
}
