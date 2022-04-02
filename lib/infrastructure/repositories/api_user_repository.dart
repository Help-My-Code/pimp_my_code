import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/repositories/user_repository.dart';
import 'package:pimp_my_code/domain/usecases/register_use_case.dart';
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
    final response = await _dataSource.register(fields: {
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'firstName': firstName,
      'lastName': lastName,
      'description': description,
    });
    if (response.isSuccessful) {
      return Right(RegistrationSuccess());
    } else {
      return Left(RegistrationFailed());
    }
  }
}
