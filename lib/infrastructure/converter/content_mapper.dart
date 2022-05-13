import '../../domain/entities/enum/content_type.dart';
import '../../domain/usecases/content/create_publication_use_case.dart';
import 'user_mapper.dart';

import '../source/api/model/content/content_model.dart';

import '../../domain/entities/content/content.dart';

class ContentMapper {
  final UserMapper _userMapper;

  ContentMapper(this._userMapper);

  ContentType _contentTypefromString(String? string) {
    switch (string) {
      case 'COMMENT':
        return ContentType.comment;
      default:
        return ContentType.publication;
    }
  }

  Content mapApiContentToContent(ApiContentModel apiContentModel) {
    return Content(
      id: apiContentModel.id,
      title: apiContentModel.title,
      content: apiContentModel.content,
      createdAt: apiContentModel.createdAt,
      creatorId: apiContentModel.creatorId,
      creator: apiContentModel.creator == null
          ? null
          : _userMapper.mapApiUserToUser(apiContentModel.creator!),
      contentType: _contentTypefromString(apiContentModel.contentType),
      medias: apiContentModel.medias,
      username: apiContentModel.username,
      groupId: apiContentModel.groupId,
      parentId: apiContentModel.parentId,
      userPicture: apiContentModel.userImage,
      code: apiContentModel.code,
      codeResult: apiContentModel.codeResult,
      numberOfLikes: apiContentModel.numberOfLikes,
      numberOfDislikes: apiContentModel.numberOfDislikes,
      numberOfComments: apiContentModel.numberOfComments,
    );
  }

  Content fromParam(CreatePublicationParam params) {
    print('parentId ${params.parentId}');
    print('contentType ${params.contentType}');
    return Content(
      title: params.title,
      content: params.content,
      createdAt: params.createdAt,
      creatorId: params.creatorId,
      creator: null,
      contentType: _contentTypefromString(params.contentType),
      medias: params.medias,
      username: params.username,
      groupId: params.groupId,
      parentId: params.parentId,
      userPicture: params.userPicture,
      code: params.code,
      codeResult: params.codeResult,
      numberOfLikes: 0,
      numberOfDislikes: 0,
      numberOfComments: 0,
    );
  }
}
