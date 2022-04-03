import 'package:pimp_my_code/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';

import '../repositories/user_repository.dart';

class LoginUseCase extends UseCase<LoginResponse, LoginParam> {
  final UserRepository _repository;

  LoginUseCase(this._repository);
  @override
  Future<Either<LoginFailure, LoginResponse>> call(LoginParam params) {
    return _repository.login(params.email, params.password);
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
