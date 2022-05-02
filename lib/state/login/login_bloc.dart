import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/entities/enum/confidentiality.dart';
import 'package:pimp_my_code/domain/entities/enum/role.dart';
import 'package:pimp_my_code/state/session/session_cubit.dart';

import '../../core/form_status.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/auth/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final SessionCubit _sessionCubit;

  LoginBloc(this._loginUseCase, this._sessionCubit)
      : super(const LoginState()) {
    on<_UpdateEmail>(onUpdateEmail);
    on<_UpdatePassword>(onUpdatePassword);
    on<_Submit>(onSubmit);
  }
  void onUpdateEmail(_UpdateEmail event, Emitter emit) {
    emit(state.copyWith(email: event.email, status: const FormNotSent()));
  }

  void onUpdatePassword(_UpdatePassword event, Emitter emit) {
    emit(state.copyWith(password: event.password, status: const FormNotSent()));
  }

  void onSubmit(_Submit event, Emitter emit) async {
    emit(state.copyWith(status: const FormSubmitting()));
    final successOrFailure =
        await _loginUseCase(LoginParam(state.email, state.password));
    successOrFailure.fold(
        (failure) => emit(state.copyWith(status: const FormSubmissionFailed())),
        (success) {
      emit(
        state.copyWith(status: const FormSubmissionSuccessful()),
      );
      // TODO build user from another way
      _sessionCubit.showHome(User(id: success.token, email: '', password: '', firstname: '', lastname: '',
          userRole: Role.member, confidentiality: Confidentiality.public));
    });
  }
}
