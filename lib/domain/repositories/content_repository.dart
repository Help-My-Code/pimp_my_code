import 'package:dartz/dartz.dart';
import '../../core/failure.dart';

import '../entities/content/content.dart';
import '../usecases/content/delete_publication.dart';
import '../usecases/content/update_content.dart';

abstract class ContentRepository {
  Future<Either<GetPublicationFailed, List<Content>>> getContents();
  Future<Either<GetPublicationFailed, Content>> getContent(String id);
  Future<Either<Failure, Unit>> createContent(Content content);
  Future<Either<UpdateContentFailed, UpdateContentSuccess>> updateContent(String contentId, String title, String content);
  Future<Either<DeleteContentFailed, DeleteContentSuccess>> deleteContent(String id);
  Future<Either<GetPublicationFailed, List<Content>>> getFollowingPublications(
      {required String userId});
  Future<Either<GetPublicationFailed, List<Content>>> getPublicationsByUserId(
      {required String userId});
  Future<Either<GetPublicationFailed, List<Content>>> getPublicationsByGroupId(
      {required String groupId});
  Future<Either<GetCommentFailed, List<Content>>> getComments(String postId);

  Future<void> unreact(String publicationId, String userId);

  Future<void> like(String publicationId, String userId);

  Future<void> dislike(String publicationId, String userId);
}

class GetCommentFailed extends Failure {}

class GetPublicationFailed extends Failure {}
