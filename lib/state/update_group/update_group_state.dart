part of 'update_group_bloc.dart';

@freezed
class UpdateGroupState with _$UpdateGroupState {
  const factory UpdateGroupState.state({
    @Default('') String name,
    @Default('') String? description,
    @Default('') String? profilePictureURL,
    @Default(Confidentiality.public) Confidentiality confidentiality,
    @Default(FormNotSent()) FormStatus status,
  }) = _State;
}
