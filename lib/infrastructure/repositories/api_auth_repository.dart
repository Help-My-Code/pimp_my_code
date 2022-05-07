import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import '../converter/user_mapper.dart';

import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/auth/login_use_case.dart';
import '../../domain/usecases/auth/register_use_case.dart';
import '../source/api/command/authentication.dart';
import '../source/api/model/user/user_model.dart';

class ApiAuthRepository extends AuthRepository {
  ApiAuthRepository(this._dataSource, this._userMapper);
  final UserMapper _userMapper;
  final AuthenticationInteractor _dataSource;

  @override
  Future<Either<RegistrationFailed, RegistrationSuccess>> register(
    String email,
    String password,
    String confirmPassword,
    String firstName,
    String lastName,
    String description,
  ) async {
    try {
      await _dataSource.register(fields: {
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
        'firstname': firstName,
        'lastname': lastName,
        'description': description,
      });
      return Right(RegistrationSuccess());
    } catch (e) {
      return Left(RegistrationFailed());
    }
  }

  @override
  Future<Either<LoginFailure, LoginResponse>> login(
      String email, String password) async {
    try {
      final response = await _dataSource.login(fields: {
        'email': email,
        'password': password,
      });

      return Right(
        LoginResponse(
          _userMapper.mapApiUserToUser(
            ApiUserModel.fromJson(response.body['user']),
          ),
          response.body['accessToken'],
        ),
      );
    } catch (e) {
      return Left(LoginFailure(tr('wrong_credentials')));
    }
  }
}
