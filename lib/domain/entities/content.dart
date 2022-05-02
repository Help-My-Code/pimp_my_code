class Content {
  final String id;
  final String? title;
  final String content;
  final DateTime createdAt;
  final String creatorId;
  final String? groupId;
  final String? parentId;
  final ContentType contentType;
  final List<String> medias;
  final String? userPicture;
  final String? code;
  final String username;

  Content(
    this.id,
    this.content,
    this.createdAt,
    this.creatorId,
    this.contentType,
    this.medias,
    this.username, {
    this.title,
    this.groupId,
    this.parentId,
    this.userPicture,
    this.code,
  });
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
