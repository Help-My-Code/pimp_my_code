import 'package:pimp_my_code/domain/entities/user.dart';

class Content {
  final String? id;
  final String? title;
  final String content;
  final DateTime createdAt;
  final String? creatorId;
  final User? creator;
  final String? groupId;
  final String? parentId;
  final ContentType contentType;
  final List<String>? medias;
  final String? userPicture;
  final String? code;
  final String? codeResult;
  final String? username;

  Content({
    required this.content,
    required this.createdAt,
    required this.creatorId,
    required this.creator,
    required this.contentType,
    required this.medias,
    required this.username,
    this.id,
    this.title,
    this.groupId,
    this.parentId,
    this.userPicture,
    this.code,
    this.codeResult,
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
