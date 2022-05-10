import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/entities/enum/confidentiality.dart';
import 'package:pimp_my_code/domain/repositories/user_repository.dart';

import '../../../core/failure.dart';
import '../../../core/usecase.dart';

class UpdateUserUseCase extends UseCase<UpdateUserSuccess, UpdateUserParams> {
  UpdateUserUseCase(this.repository);

  final UserRepository repository;

  @override
  Future<Either<UpdateUserFailed, UpdateUserSuccess>> call(
    UpdateUserParams params,
  ) async {
    return repository.updateUser(
      params.userId,
      params.description,
      params.profilePictureURL,
      params.password,
      params.confirmPassword,
      params.confidentiality,
    );
  }
}

class UpdateUserParams {
  UpdateUserParams(
    this.userId,
    this.description,
    this.profilePictureURL,
    this.password,
    this.confirmPassword,
    this.confidentiality,
  );

  final String userId;
  final String description;
  final String profilePictureURL;
  final String password;
  final String confirmPassword;
  final Confidentiality confidentiality;
}

class UpdateUserFailed extends Failure {}

class UpdateUserSuccess {}
