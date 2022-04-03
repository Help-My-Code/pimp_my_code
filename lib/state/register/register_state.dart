part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.state({
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String description,
    @Default(FormNotSent()) FormStatus status,
  }) = _State;
}
