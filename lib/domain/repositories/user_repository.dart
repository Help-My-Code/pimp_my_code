import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Future<Either<GetUserFailed, List<User>>> getByName({required String name});

  Future<Either<Failure, void>> updateUser(User user);
}

class GetUserFailed extends Failure {}
