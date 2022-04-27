import '../entities/content.dart';

abstract class ContentRepository {
  Future<List<Content>> getContents();
  Future<Content> getContent(String id);
  Future<Content> createContent(Content content);
  Future<Content> updateContent(Content content);
  Future<void> deleteContent(String id);
  Future<List<Content>> getFollowingPublications(String userId);
}
