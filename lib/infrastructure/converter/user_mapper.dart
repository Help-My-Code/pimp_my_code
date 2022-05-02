import '../../domain/entities/enum/confidentiality.dart';
import '../../domain/entities/enum/role.dart';
import '../../domain/entities/user.dart';
import '../source/api/model/user/user_model.dart';

class UserMapper {
  Confidentiality _confidentialityFromString(String string) {
    switch (string) {
      case 'PUBLIC':
        return Confidentiality.public;
      case 'PRIVATE':
        return Confidentiality.private;
      default:
        throw AssertionError();
    }
  }
  Role _roleFromString(String string) {
    switch (string) {
      case 'ADMIN':
        return Role.admin;
      case 'MEMBER':
        return Role.member;
      default:
        throw AssertionError();
    }
  }

  User mapApiUserToUser(ApiUserModel apiUserModel) {
    return User(
      apiUserModel.id,
      apiUserModel.email,
      apiUserModel.password,
      apiUserModel.firstname,
      apiUserModel.lastname,
      _roleFromString(apiUserModel.userRole),
      _confidentialityFromString(apiUserModel.confidentiality),
      description: apiUserModel.description,
      principalPictureUrl: apiUserModel.principalPictureUrl,
    );
  }
}
