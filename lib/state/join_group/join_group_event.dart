part of 'join_group_bloc.dart';

@freezed
class JoinGroupEvent with _$JoinGroupEvent {
  const factory JoinGroupEvent.submit(String groupId) = _Submit;
}
