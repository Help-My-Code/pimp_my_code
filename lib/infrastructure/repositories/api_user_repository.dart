import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../converter/user_mapper.dart';
import '../source/api/command/user.dart';
import '../source/api/model/user/user_model.dart';


class ApiUserRepository extends UserRepository {
  final UserInteractor _dataSource;
  final UserMapper _userMapper;

  ApiUserRepository(this._dataSource, this._userMapper);

  @override
  Future<Either<GetUserFailed, List<User>>> getByName({required String name}) async {
    final response = await _dataSource.getByName(name);
    final List<Map<String, dynamic>> apiUsers =
    List.from(response.body['users']);
    return Right(
      apiUsers
          .map(ApiUserModel.fromJson)
          .map(_userMapper.mapApiUserToUser)
          .toList(),
    );
  }

  @override
  Future<Either<Failure, void>> updateUser(User user) {
    throw UnimplementedError();
  }
}
