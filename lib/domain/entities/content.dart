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
  final String? codeResult;
  final String username;

  Content({
    required this.id,
    this.title,
    required this.content,
    required this.createdAt,
    required this.creatorId,
    this.groupId,
    this.parentId,
    required this.contentType,
    required this.medias,
    this.userPicture,
    this.code,
    required this.username,
  });
    this.username,
      this.codeResult,
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
