import 'package:dartz/dartz.dart';
import '../../../core/failure.dart';
import '../../../core/usecase.dart';

import '../../repositories/user_repository.dart';

class RegisterUseCase extends UseCase<RegistrationSuccess, RegisterParams> {
  RegisterUseCase(this.repository);

  final UserRepository repository;

  @override
  Future<Either<RegistrationFailed, RegistrationSuccess>> call(
    RegisterParams params,
  ) async {
    return repository.register(
      params.email,
      params.password,
      params.confirmPassword,
      params.firstName,
      params.lastName,
      params.description,
    );
  }
}

class RegisterParams {
  RegisterParams(
    this.email,
    this.password,
    this.confirmPassword,
    this.firstName,
    this.lastName,
    this.description,
  );

  final String email;
  final String password;
  final String confirmPassword;
  final String firstName;
  final String lastName;
  final String description;
}

class RegistrationFailed extends Failure {}

class RegistrationSuccess {}
