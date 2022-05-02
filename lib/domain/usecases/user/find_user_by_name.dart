import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';
import 'package:pimp_my_code/domain/repositories/user_repository.dart';

import '../../../core/failure.dart';
import '../../entities/user.dart';

class FindUserByNameUseCase extends UseCase<List<User>, FindUserByNameParam> {
  final UserRepository _repository;

  FindUserByNameUseCase(this._repository);

  @override
  Future<Either<FindUserByNameFailure, List<User>>> call(
      FindUserByNameParam params,
  ) async {
    return await _repository.getByName(name: params.name);
  }
}

class FindUserByNameFailure extends Failure {
  final String message;

  FindUserByNameFailure(this.message);
}

class FindUserByNameParam {
  final String name;

  FindUserByNameParam(this.name);
}
