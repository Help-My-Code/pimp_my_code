import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/auth/login_use_case.dart';
import '../../domain/usecases/auth/logout_use_case.dart';

part 'session_state.dart';

class SessionCubit extends Cubit<SessionState> with ChangeNotifier {
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;
  final SharedPreferences _localStorage;
  SessionCubit(
    this._loginUseCase,
    this._logoutUseCase,
    this._localStorage,
  ) : super(const UnknownAuthState()) {
    _attemptAutoLogin();
  }

  void _attemptAutoLogin() {
    final autoLoginResponse = _loginUseCase.attemptAutoLogin();
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

  Future<String> getUserId() async {
    final userId = _localStorage.getString('id');
    if (userId == null) {
      throw AssertionError();
    }
    return userId;
  }

  Future<String> getToken() async {
    final token = _localStorage.getString('token');
    if (token == null) {
      throw AssertionError();
    }
    return token;
  }
}
