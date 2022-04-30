import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/core/usecase.dart';
import 'package:pimp_my_code/domain/repositories/user_repository.dart';

import '../../entities/user.dart';

class FindUserByNameUseCase extends UseCase<List<User>, String> {
  final UserRepository users;

  FindUserByNameUseCase(this.users);

  @override
  Future<Either<GetUserFailed, List<User>>> call(
    String params,
  ) async {
    return users.getByName(name: params);
  }
}
