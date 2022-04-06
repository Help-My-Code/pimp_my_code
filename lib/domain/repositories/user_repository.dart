import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/usecases/login_use_case.dart';

import '../usecases/register_use_case.dart';

abstract class UserRepository {
  Future<Either<RegistrationFailed, RegistrationSuccess>> register(
    email,
    password,
    confirmPassword,
    firstName,
    lastName,
    description,
  );

  Future<Either<LoginFailure, LoginResponse>> login(
    String email,
    String password,
  );
}
