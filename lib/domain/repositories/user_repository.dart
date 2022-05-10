import 'package:dartz/dartz.dart';

import '../entities/enum/confidentiality.dart';
import '../entities/user.dart';
import '../usecases/user/find_user_by_id.dart';
import '../usecases/user/find_user_by_name.dart';
import '../usecases/user/update_user_use_case.dart';

abstract class UserRepository {
  Future<Either<FindUserByIdFailure, User>> getById({required String id});

  Future<Either<FindUserByNameFailure, List<User>>> getByName(
      {required String name});

  Future<Either<UpdateUserFailed, UpdateUserSuccess>> updateUser(
      String userId,
      String description,
      String profilePictureURL,
      String password,
      String confirmPassword,
      Confidentiality confidentiality);
}
