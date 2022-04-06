import 'package:dartz/dartz.dart';

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
}
