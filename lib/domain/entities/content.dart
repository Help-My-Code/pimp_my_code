import 'enum/content_type.dart';
import 'user.dart';

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
