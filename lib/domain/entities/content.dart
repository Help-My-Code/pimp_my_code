class Content {
  final String id;
  final String title;
  final String content;
  final DateTime createdAt;
  final String creatorId;
  final String groupId;
  final String parentId;
  final ContentType contentType;

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

enum ContentType {
  publication,
  comment,
}

extension ContentTypeExtension on ContentType {
  String get string {
    switch (this) {
      case ContentType.publication:
        return 'publication';
      case ContentType.comment:
        return 'comment';
    }
  }
}
