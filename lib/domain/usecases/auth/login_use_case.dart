import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/failure.dart';
import 'package:dartz/dartz.dart';
import '../../../core/usecase.dart';
import '../../../infrastructure/converter/token_decoder.dart';

import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

class LoginUseCase extends UseCase<LoginResponse, LoginParam> {
  final AuthRepository _repository;
  final SharedPreferences _storage;

  LoginUseCase(this._repository, this._storage);
  @override
  Future<Either<LoginFailure, LoginResponse>> call(LoginParam params) async {
    final loginResponseOrFailure =
        await _repository.login(params.email, params.password);
    await loginResponseOrFailure.fold((failure) {}, _saveUserInfoAfterLogin);
    return loginResponseOrFailure;
  }

  Either<UserIdNotFoundInLocalStorage, String> attemptAutoLogin() {
    final String? id = _storage.getString('id');
    if (id == null) {
      return Left(UserIdNotFoundInLocalStorage());
    }
    return Right(id);
  }

  _saveUserInfoAfterLogin(LoginResponse response) async {
    final decodedToken = TokenDecoder.convertTokenToMap(response.token);
    await _storage.setString('token', response.token);
    await _storage.setString('id', decodedToken['userId']);
  }
}

class UserIdNotFoundInLocalStorage implements Exception {}

class LoginResponse {
  final User user;
  final String token;
  LoginResponse(this.user, this.token);
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
