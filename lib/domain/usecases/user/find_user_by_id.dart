import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';
import 'package:pimp_my_code/domain/repositories/user_repository.dart';

import '../../../core/failure.dart';
import '../../entities/user.dart';

class FindUserByIdUseCase extends UseCase<User, FindUserByIdParam> {
  final UserRepository _repository;

  FindUserByIdUseCase(this._repository);

  @override
  Future<Either<FindUserByIdFailure, User>> call(
      FindUserByIdParam params,
  ) async {
    return await _repository.getById(id: params.id);
  }
}

class FindUserByIdFailure extends Failure {
  final String message;

  FindUserByIdFailure(this.message);
}

class FindUserByIdParam {
  final String id;

  FindUserByIdParam(this.id);
}
