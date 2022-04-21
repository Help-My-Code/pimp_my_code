import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/login_use_case.dart';
import '../../domain/usecases/logout_use_case.dart';

part 'session_state.dart';

class SessionCubit extends Cubit<SessionState> with ChangeNotifier {
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;
  SessionCubit(
    this._loginUseCase,
    this._logoutUseCase,
  ) : super(const UnknownAuthState()) {
    _attemptAutoLogin();
  }

  void _attemptAutoLogin() async {
    final autoLoginResponse = await _loginUseCase.attemptAutoLogin();
    autoLoginResponse.fold(
      (_) {
        emit(const Unauthenticated());
        notifyListeners();
      },
      (id) {
        emit(Authenticated(userId: id));
        notifyListeners();
      },
    );
  }

  void showHome(User user) {
    emit(Authenticated(userId: user.id));
    notifyListeners();
  }

  Future<void> logout() async {
    await _logoutUseCase();
    emit(const Unauthenticated());
    notifyListeners();
  }
}
