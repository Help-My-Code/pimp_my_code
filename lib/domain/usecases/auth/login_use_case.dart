import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pimp_my_code/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';
import 'package:pimp_my_code/infrastructure/converter/token_decoder.dart';

import '../../repositories/auth_repository.dart';

class LoginUseCase extends UseCase<LoginResponse, LoginParam> {
  final AuthRepository _repository;
  final FlutterSecureStorage _storage;

  LoginUseCase(this._repository, this._storage);
  @override
  Future<Either<LoginFailure, LoginResponse>> call(LoginParam params) async {
    final loginResponseOrFailure =
        await _repository.login(params.email, params.password);
    loginResponseOrFailure.fold((failure) {}, _saveUserInfoAfterLogin);
    return loginResponseOrFailure;
  }

  Future<Either<UserIdNotFoundInLocalStorage, String>>
      attemptAutoLogin() async {
    final String? id = await _storage.read(key: 'id');
    if (id == null) {
      return Left(UserIdNotFoundInLocalStorage());
    }
    return Right(id);
  }

  _saveUserInfoAfterLogin(LoginResponse response) async {
    final decodedToken = TokenDecoder.convertTokenToMap(response.token);
    await _storage.write(key: 'token', value: response.token);
    await _storage.write(key: 'id', value: decodedToken['userId']);
  }
}

class UserIdNotFoundInLocalStorage implements Exception {}

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
