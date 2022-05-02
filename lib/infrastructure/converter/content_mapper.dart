import '../source/api/model/content/content_model.dart';

import '../../domain/entities/content.dart';

class ContentMapper {
  ContentType _contentTypefromString(String string) {
    switch (string) {
      case 'PUBLICATION':
        return ContentType.publication;
      case 'COMMENT':
        return ContentType.comment;
      default:
        throw AssertionError();
    }
  }

  Content mapApiContentToContent(ApiContentModel apiContentModel) {
    return Content(
      apiContentModel.id,
      apiContentModel.content,
      apiContentModel.createdAt,
      apiContentModel.creatorId,
      _contentTypefromString(apiContentModel.contentType),
      apiContentModel.medias,
      apiContentModel.username,
      title: apiContentModel.title,
      groupId: apiContentModel.groupId,
      parentId: apiContentModel.parentId,
      userPicture: apiContentModel.userImage,
      code: apiContentModel.code,
    );
  }
}
