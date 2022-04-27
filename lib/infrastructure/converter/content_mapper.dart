import '../source/api/model/content/content_model.dart';

import '../../domain/entities/content.dart';

class ContentMapper {
  ContentType _contentTypefromString(String string) {
    switch (string) {
      case 'publication':
        return ContentType.publication;
      case 'comment':
        return ContentType.comment;
      default:
        throw AssertionError();
    }
  }

  Content mapApiContentToContent(ApiContentModel apiContentModel) {
    return Content(
      apiContentModel.id,
      apiContentModel.title,
      apiContentModel.content,
      apiContentModel.createdAt,
      apiContentModel.creatorId,
      apiContentModel.groupId,
      apiContentModel.parentId,
      _contentTypefromString(apiContentModel.contentType),
    );
  }
}
