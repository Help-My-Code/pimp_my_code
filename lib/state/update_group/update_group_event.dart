part of 'update_group_bloc.dart';

@freezed
class UpdateGroupEvent with _$UpdateGroupEvent {
  const factory UpdateGroupEvent.submit(String groupId) = _Submit;
  const factory UpdateGroupEvent.updateName(String name) = _UpdateName;
  const factory UpdateGroupEvent.updateDescription(String description) =
      _UpdateDescription;
  const factory UpdateGroupEvent.updateProfilePictureURL(
      String profilePictureURL) = _UpdateProfilePictureURL;
  const factory UpdateGroupEvent.updateConfidentiality(
      Confidentiality confidentiality) = _UpdateConfidentiality;
  const factory UpdateGroupEvent.loaded(Group group) = _Loaded;
}
