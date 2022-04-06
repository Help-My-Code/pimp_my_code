part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.submit() = _Submit;
  const factory RegisterEvent.updateEmail(String email) = _UpdateEmail;
  const factory RegisterEvent.updatePassword(String password) = _UpdatePassword;
  const factory RegisterEvent.updateConfirmPassword(String confirmPassword) =
      _UpdateConfirmPassword;
  const factory RegisterEvent.updateFirstName(String firstName) =
      _UpdateFirstName;
  const factory RegisterEvent.updateLastName(String lastName) = _UpdateLastName;
  const factory RegisterEvent.updateDescription(String description) =
      _UpdateDescription;
}
