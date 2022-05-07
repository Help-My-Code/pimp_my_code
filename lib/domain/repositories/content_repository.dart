import 'package:dartz/dartz.dart';
import '../../core/failure.dart';

import '../entities/content.dart';

abstract class ContentRepository {
  Future<Either<GetPublicationFailed, List<Content>>> getContents();
  Future<Either<GetPublicationFailed, Content>> getContent(String id);
  Future<Either<Failure, Unit>> createContent(Content content);
  Future<Either<Failure, Content>> updateContent(Content content);
  Future<Either<Failure, void>> deleteContent(String id);
  Future<Either<GetPublicationFailed, List<Content>>> getFollowingPublications(
      {required String userId});
  Future<Either<GetPublicationFailed, List<Content>>> getPublicationsByUserId(
      {required String userId});

  Future<void> like(String publicationId, String userId);

  Future<void> dislike(String publicationId, String userId);
}

class GetPublicationFailed extends Failure {}
