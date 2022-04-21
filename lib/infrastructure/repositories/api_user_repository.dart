import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/usecases/login_use_case.dart';
import '../../domain/usecases/register_use_case.dart';
import '../source/api/command/authentication.dart';

class ApiUserRepository extends UserRepository {
  ApiUserRepository(this._dataSource);

  final AuthenticationInteractor _dataSource;

  @override
  Future<Either<RegistrationFailed, RegistrationSuccess>> register(
    email,
    password,
    confirmPassword,
    firstName,
    lastName,
    description,
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
      return Right(LoginResponse(response.body['accessToken']));
    } catch (e) {
      return Left(LoginFailure(tr('wrong_credentials')));
    }
  }
}
