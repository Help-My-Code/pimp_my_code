import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';
import 'package:pimp_my_code/domain/entities/follow.dart';
import 'package:pimp_my_code/domain/repositories/user_repository.dart';

import '../../../core/failure.dart';
import '../../entities/user.dart';
import '../../repositories/follow_repository.dart';

class FindFollowByUserIdUseCase extends UseCase<List<Follow>, FindFollowByUserIdParam> {
  final FollowRepository _repository;

  FindFollowByUserIdUseCase(this._repository);

  @override
  Future<Either<FindFollowByUserIdFailure, List<Follow>>> call(
      FindFollowByUserIdParam params,
  ) async {
    return await _repository.getFollowByUserId(id: params.id);
  }
}

class FindFollowByUserIdFailure extends Failure {
  final String message;

  FindFollowByUserIdFailure(this.message);
}

class FindFollowByUserIdParam {
  final String id;

  FindFollowByUserIdParam(this.id);
}
