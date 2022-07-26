import 'package:easy_localization/easy_localization.dart';
import '../../core/failure.dart';

import 'package:dartz/dartz.dart';
import '../../domain/usecases/content/create_publication_use_case.dart';
import '../../domain/usecases/content/delete_publication.dart';
import '../../domain/usecases/content/update_content.dart';
import '../source/api/command/content.dart';
import '../source/api/command/user_like.dart';
import '../source/api/model/content/content_model.dart';

import '../../domain/entities/content/content.dart';
import '../../domain/repositories/content_repository.dart';
import '../converter/content_mapper.dart';

class ApiContentRepository extends ContentRepository {
  final UserLikeInteractor _userLikeInteractor;
  final ContentInteractor _dataSource;
  final ContentMapper _contentMapper;

  ApiContentRepository(
    this._dataSource,
    this._contentMapper,
    this._userLikeInteractor,
  );

  @override
  Future<Either<Failure, Unit>> createContent(Content content) async {
    try {
      final fields = {
        'content': content.content,
        'contentType': content.contentType.name.toUpperCase(),
        'creatorId': content.creatorId,
        'medias': content.medias,
      };
      if (content.groupId != null) {
        fields['groupId'] = content.groupId!;
      }

      if (content.parentId != null) {
        fields['parentId'] = content.parentId!;
      }

      if (content.title != null) {
        fields['title'] = content.title!;
      }

      if (content.code != null) {
        fields['stdin'] = content.code!;
      }

      if (content.codeResult != null) {
        fields['stdout'] = content.codeResult!;
      }

      await _dataSource.createContent(fields: fields);
      return right(unit);
    } catch (e) {
      return left(CreatePublicationFailure(tr('create_content_failure')));
    }
  }

  @override
  Future<Either<DeleteContentFailed, DeleteContentSuccess>> deleteContent(
      String id) async {
    try {
      await _dataSource.deleteContent(fields: {
        'contentId': id,
      });
      return Right(DeleteContentSuccess());
    } catch (e) {
      return Left(DeleteContentFailed());
    }
  }

  @override
  Future<Either<GetPublicationFailed, Content>> getContent(String id) async {
    final response = await _dataSource.getContent(id);
    final contentModel = ApiContentModel.fromJson(response.body);
    return Right(_contentMapper.mapApiContentToContent(contentModel));
  }

  @override
  Future<Either<GetPublicationFailed, List<Content>>> getContents() {
    throw UnimplementedError();
  }

  @override
  Future<Either<GetPublicationFailed, List<Content>>> getFollowingPublications({
    required String userId,
  }) async {
    final response = await _dataSource.getFollowingPublicationsByUserId(userId);
    final List<Map<String, dynamic>> apiContents = List.from(response.body);
    return Right(
      apiContents
          .map(ApiContentModel.fromJson)
          .map(_contentMapper.mapApiContentToContent)
          .toList(),
    );
  }

  @override
  Future<Either<GetPublicationFailed, List<Content>>> getPublicationsByUserId(
      {required String userId}) async {
    final response = await _dataSource.getPublicationsByUserId(userId);
    final List<Map<String, dynamic>> apiContents = List.from(response.body);
    return Right(
      apiContents
          .map(ApiContentModel.fromJson)
          .map(_contentMapper.mapApiContentToContent)
          .toList(),
    );
  }

  @override
  Future<Either<GetPublicationFailed, List<Content>>> getPublicationsByGroupId(
      {required String groupId}) async {
    final response = await _dataSource.getPublicationsByGroupId(groupId);
    final List<Map<String, dynamic>> apiContents = List.from(response.body);
    return Right(
      apiContents
          .map(ApiContentModel.fromJson)
          .map(_contentMapper.mapApiContentToContent)
          .toList(),
    );
  }

  @override
  Future<Either<UpdateContentFailed, UpdateContentSuccess>> updateContent(
      String contentId, String title, String content) async {
    try {
      await _dataSource.update(fields: {
        'contentId': contentId,
        'title': title,
        'content': content,
      });
      return Right(UpdateContentSuccess());
    } catch (e) {
      return Left(UpdateContentFailed());
    }
  }

  @override
  Future<void> unreact(String publicationId, String userId) async {
    final field = {
      'userId': userId,
      'contentId': publicationId,
    };
    await _userLikeInteractor.deleteUserReactToContent(field);
  }

  @override
  Future<void> like(String publicationId, String userId) async {
    final field = {
      'userId': userId,
      'contentId': publicationId,
      'reactionType': 'LIKE'
    };
    await _userLikeInteractor.createLikeOrDislike(field);
  }

  @override
  Future<void> dislike(String publicationId, String userId) async {
    final field = {
      'userId': userId,
      'contentId': publicationId,
      'reactionType': 'DISLIKE'
    };
    await _userLikeInteractor.createLikeOrDislike(field);
  }

  @override
  Future<Either<GetCommentFailed, List<Content>>> getComments(
      String postId) async {
    final response = await _dataSource.getComments(postId);
    final List<Map<String, dynamic>> apiComments = List.from(response.body);
    return Right(
      apiComments
          .map(ApiContentModel.fromJson)
          .map(_contentMapper.mapApiContentToContent)
          .toList(),
    );
  }
}
