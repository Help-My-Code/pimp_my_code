import 'package:easy_localization/easy_localization.dart';
import 'package:pimp_my_code/domain/entities/content/comment.dart';
import '../../core/failure.dart';

import 'package:dartz/dartz.dart';
import '../../domain/usecases/content/create_publication_use_case.dart';
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
      this._dataSource, this._contentMapper, this._userLikeInteractor);

  @override
  Future<Either<Failure, Unit>> createContent(Content content) async {
    try {
      final fields = {
        'content': content.content,
        'contentType': content.contentType.name.toUpperCase(),
        'creatorId': content.creatorId,
      };

      if (content.title != null) {
        fields['title'] = content.title!;
      }

      if (content.code != null && content.codeResult != null) {
        fields['stdin'] = content.code!;
        fields['stdout'] = content.codeResult!;
      }
      await _dataSource.createContent(fields: fields);
      return right(unit);
    } catch (e) {
      return left(CreatePublicationFailure(tr('create_content_failure')));
    }
  }

  @override
  Future<Either<Failure, void>> deleteContent(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<GetPublicationFailed, Content>> getContent(String id) {
    throw UnimplementedError();
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
  Future<Either<Failure, Content>> updateContent(Content content) {
    throw UnimplementedError();
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
  Future<Either<GetCommentFailed, List<Comment>>> getComment(String postId) {
    _dataSource.getComment(postId);
    throw new UnimplementedError();
  }
}
