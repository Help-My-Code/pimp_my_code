import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pimp_my_code/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';

import '../repositories/user_repository.dart';

class LoginUseCase extends UseCase<LoginResponse, LoginParam> {
  final UserRepository _repository;
  final FlutterSecureStorage _storage;

  LoginUseCase(this._repository, this._storage);
  @override
  Future<Either<LoginFailure, LoginResponse>> call(LoginParam params) async {
    final loginResponseOrFailure =
        await _repository.login(params.email, params.password);
    loginResponseOrFailure.fold(
      (failure) {},
      (loginResponse) async =>
          await _storage.write(key: 'token', value: loginResponse.token),
    );
    return loginResponseOrFailure;
  }
}

class LoginResponse {
  final String token;

  LoginResponse(this.token);
}

class LoginFailure extends Failure {
  final String message;

  LoginFailure(this.message);
}

class LoginParam {
  final String email;
  final String password;

  LoginParam(this.email, this.password);
}
