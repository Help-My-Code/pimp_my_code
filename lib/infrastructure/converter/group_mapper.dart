import 'package:pimp_my_code/infrastructure/converter/user_mapper.dart';

import '../../domain/entities/enum/confidentiality.dart';
import '../../domain/entities/group.dart';
import '../source/api/model/group/group_model.dart';

class GroupMapper {

  final UserMapper _userMapper;

  GroupMapper(this._userMapper);


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

  Group mapApiGroupToGroup(ApiGroupModel apiGroupModel) {
    return Group(
      apiGroupModel.id,
      apiGroupModel.name,
      apiGroupModel.description,
      _confidentialityFromString(apiGroupModel.confidentiality),
      _userMapper.mapApiUserToUser(apiGroupModel.creator),
      apiGroupModel.principalPictureUrl,
    );
  }
}
