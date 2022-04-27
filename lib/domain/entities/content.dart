class Content {
  final String id;
  final String title;
  final String content;
  final DateTime createdAt;
  final String creatorId;
  final String groupId;
  final String parentId;
  final String contentType;

  Content(
    this.id,
    this.title,
    this.content,
    this.createdAt,
    this.creatorId,
    this.groupId,
    this.parentId,
    this.contentType,
  );
}
