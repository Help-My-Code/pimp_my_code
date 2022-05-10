part of 'update_user_bloc.dart';

@freezed
class UpdateUserState with _$UpdateUserState {
  const factory UpdateUserState.state({
    @Default('') String? description,
    @Default('') String? profilePictureURL,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(Confidentiality.public) Confidentiality confidentiality,
    @Default(FormNotSent()) FormStatus status,
  }) = _State;
}
