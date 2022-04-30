import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/form_status.dart';
import '../../domain/usecases/auth/register_use_case.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase _registerUseCase;

  RegisterBloc(this._registerUseCase) : super(const RegisterState.state()) {
    on<_Submit>(onSubmit);
    on<_UpdateEmail>(onUpdateEmail);
    on<_UpdatePassword>(onUpdatePassword);
    on<_UpdateConfirmPassword>(onUpdateConfirmPassword);
    on<_UpdateFirstName>(onUpdateFirstName);
    on<_UpdateLastName>(onUpdateLastName);
    on<_UpdateDescription>(onUpdateDescription);
  }

  void onSubmit(_Submit event, Emitter emit) async {
    emit(state.copyWith(status: const FormSubmitting()));
    final successOrFailure = await _registerUseCase(RegisterParams(
      state.email,
      state.password,
      state.confirmPassword,
      state.firstName,
      state.lastName,
      state.description,
    ));
    successOrFailure.fold(
      (failure) => emit(state.copyWith(status: const FormSubmissionFailed())),
      (success) =>
          emit(state.copyWith(status: const FormSubmissionSuccessful())),
    );
  }

  void onUpdateEmail(_UpdateEmail event, Emitter emit) {
    emit(state.copyWith(email: event.email, status: const FormNotSent()));
  }

  void onUpdatePassword(_UpdatePassword event, Emitter emit) {
    emit(state.copyWith(password: event.password, status: const FormNotSent()));
  }

  void onUpdateConfirmPassword(_UpdateConfirmPassword event, Emitter emit) {
    emit(state.copyWith(
        confirmPassword: event.confirmPassword, status: const FormNotSent()));
  }

  void onUpdateFirstName(_UpdateFirstName event, Emitter emit) {
    emit(state.copyWith(
        firstName: event.firstName, status: const FormNotSent()));
  }

  void onUpdateLastName(_UpdateLastName event, Emitter emit) {
    emit(state.copyWith(lastName: event.lastName, status: const FormNotSent()));
  }

  void onUpdateDescription(_UpdateDescription event, Emitter emit) {
    emit(state.copyWith(
        description: event.description, status: const FormNotSent()));
  }
}
