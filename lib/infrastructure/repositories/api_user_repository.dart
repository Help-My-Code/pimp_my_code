import 'package:dartz/dartz.dart';
import 'package:pimp_my_code/domain/entities/enum/confidentiality.dart';
import 'package:pimp_my_code/domain/entities/enum/role.dart';

import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/usecases/user/find_user_by_id.dart';
import '../../domain/usecases/user/find_user_by_name.dart';
import '../../domain/usecases/user/update_user_use_case.dart';
import '../converter/user_mapper.dart';
import '../source/api/command/user.dart';
import '../source/api/model/user/user_model.dart';

class ApiUserRepository extends UserRepository {
  final UserInteractor _dataSource;
  final UserMapper _userMapper;

  ApiUserRepository(this._dataSource, this._userMapper);

  @override
  Future<Either<FindUserByIdFailure, User>> getById(
      {required String id}) async {
    final response = await _dataSource.getById(id);
    final Map<String, dynamic> apiUser = response.body['user'];
    return Right(
      _userMapper.mapApiUserToUser(ApiUserModel.fromJson(apiUser)),
    );
  }

  @override
  Future<Either<FindUserByNameFailure, List<User>>> getByName(
      {required String name}) async {
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
  Future<Either<UpdateUserFailed, UpdateUserSuccess>> updateUser(
      String userId,
      String description,
      String profilePictureURL,
      String password,
      String confirmPassword,
      Confidentiality confidentiality) async {
    try {
      await _dataSource.update(fields: {
        'userId': userId,
        'password': password,
        'passwordConfirmation': confirmPassword,
        'description': description,
        'userRole': Role.member.name.toUpperCase(),
        'confidentiality': confidentiality.name.toUpperCase(),
        'principalPictureURL': profilePictureURL,
      });
      return Right(UpdateUserSuccess());
    } catch (e) {
      return Left(UpdateUserFailed());
    }
  }
}
