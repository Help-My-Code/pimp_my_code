import '../../domain/entities/enum/confidentiality.dart';
import '../../domain/entities/group.dart';
import '../source/api/model/group/group_model.dart';

class GroupMapper {

  GroupMapper();


  Confidentiality _confidentialityFromString(String? string) {
    switch (string) {
      case 'PRIVATE':
        return Confidentiality.private;
      default:
        return Confidentiality.public;
    }
  }

  Group mapApiGroupToGroup(ApiGroupModel apiGroupModel) {
    return Group.withoutCreator(
      id: apiGroupModel.id,
      name: apiGroupModel.name,
      description: apiGroupModel.description,
      confidentiality: _confidentialityFromString(apiGroupModel.confidentiality),
      principalPictureUrl: apiGroupModel.principalPictureUrl,
    );
  }
}
