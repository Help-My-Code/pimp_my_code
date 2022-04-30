import 'package:dartz/dartz.dart';

import '../usecases/auth/login_use_case.dart';
import '../usecases/auth/register_use_case.dart';

abstract class AuthRepository {
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
