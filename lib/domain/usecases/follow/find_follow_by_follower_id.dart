import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';
import 'package:pimp_my_code/domain/entities/follow.dart';
import 'package:pimp_my_code/domain/repositories/user_repository.dart';

import '../../../core/failure.dart';
import '../../entities/user.dart';
import '../../repositories/follow_repository.dart';

class FindFollowByFollowerIdUseCase extends UseCase<List<Follow>, FindFollowByFollowerIdParam> {
  final FollowRepository _repository;

  FindFollowByFollowerIdUseCase(this._repository);

  @override
  Future<Either<FindFollowByFollowerIdFailure, List<Follow>>> call(
      FindFollowByFollowerIdParam params,
  ) async {
    return await _repository.getFollowByFollowerId(id: params.id);
  }
}

class FindFollowByFollowerIdFailure extends Failure {
  final String message;

  FindFollowByFollowerIdFailure(this.message);
}

class FindFollowByFollowerIdParam {
  final String id;

  FindFollowByFollowerIdParam(this.id);
}
