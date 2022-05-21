part of 'create_group_bloc.dart';

@freezed
class CreateGroupEvent with _$CreateGroupEvent {
  const factory CreateGroupEvent.submit(String creatorId) = _Submit;
  const factory CreateGroupEvent.updateName(String name) = _UpdateName;
}
