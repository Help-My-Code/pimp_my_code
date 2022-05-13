part of 'quit_group_bloc.dart';

@freezed
class QuitGroupEvent with _$QuitGroupEvent {
  const factory QuitGroupEvent.submit(String groupId) = _Submit;
}
