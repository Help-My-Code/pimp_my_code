import '../../domain/entities/content.dart';
import '../../domain/repositories/content_repository.dart';

class ApiContentRepository extends ContentRepository {
  @override
  Future<Content> createContent(Content content) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteContent(String id) {
    throw UnimplementedError();
  }

  @override
  Future<Content> getContent(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Content>> getContents() {
    throw UnimplementedError();
  }

  @override
  Future<List<Content>> getFollowingPublications(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<Content> updateContent(Content content) {
    throw UnimplementedError();
  }
}
