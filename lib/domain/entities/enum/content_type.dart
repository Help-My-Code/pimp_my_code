enum ContentType {
  publication,
  comment,
}

extension ContentTypeExtension on ContentType {
  String get string {
    switch (this) {
      case ContentType.publication:
        return 'PUBLICATION';
      case ContentType.comment:
        return 'COMMENT';
    }
  }
}
