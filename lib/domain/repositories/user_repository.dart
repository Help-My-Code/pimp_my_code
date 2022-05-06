import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../entities/user.dart';
import '../usecases/user/find_user_by_id.dart';
import '../usecases/user/find_user_by_name.dart';

abstract class UserRepository {
  Future<Either<FindUserByIdFailure, User>> getById({required String id});

  Future<Either<FindUserByNameFailure, List<User>>> getByName({required String name});

  Future<Either<Failure, void>> updateUser(User user);
}
