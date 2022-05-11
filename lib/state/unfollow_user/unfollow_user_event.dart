part of 'unfollow_user_bloc.dart';

@freezed
class UnfollowUserEvent with _$UnfollowUserEvent {
  const factory UnfollowUserEvent.submit(String userId) = _Submit;
}
