part of 'follow_user_bloc.dart';

@freezed
class FollowUserState with _$FollowUserState {
  const factory FollowUserState.state({
    @Default(FormNotSent()) FormStatus status,
  }) = _State;
}
