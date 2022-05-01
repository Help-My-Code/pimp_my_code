import 'package:pimp_my_code/domain/usecases/content/create_publication_use_case.dart';

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
      id: apiContentModel.id,
      title: apiContentModel.title,
      content: apiContentModel.content,
      createdAt: apiContentModel.createdAt,
      creatorId: apiContentModel.creatorId,
      contentType: _contentTypefromString(apiContentModel.contentType),
      medias: apiContentModel.medias,
      username: apiContentModel.username,
      groupId: apiContentModel.groupId,
      parentId: apiContentModel.parentId,
      userPicture: apiContentModel.userImage,
      code: apiContentModel.code,
      apiContentModel.codeResult,
    );
  }

  Content fromParam(CreatePublicationParam params) {
    return Content(
      '',
      params.title,
      params.content,
      params.createdAt,
      params.creatorId,
      params.groupId,
      params.parentId,
      _contentTypefromString(params.contentType),
      params.medias,
      params.userPicture,
      params.code,
      params.username,
      params.codeResult,
    );
  }
}
