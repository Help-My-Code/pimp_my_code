part of 'follow_user_bloc.dart';

@freezed
class FollowUserEvent with _$FollowUserEvent {
  const factory FollowUserEvent.submit(String userId) = _Submit;
}
