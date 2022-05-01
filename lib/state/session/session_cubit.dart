import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/auth/login_use_case.dart';
import '../../domain/usecases/auth/logout_use_case.dart';

part 'session_state.dart';

class SessionCubit extends Cubit<SessionState> with ChangeNotifier {
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;
  final FlutterSecureStorage _secureStorage;
  SessionCubit(
    this._loginUseCase,
    this._logoutUseCase,
    this._secureStorage,
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

  Future<String> getUserId() async {
    final userId = await _secureStorage.read(key: 'id');
    if (userId == null) {
      throw AssertionError();
    }
    return userId;
  }
}
