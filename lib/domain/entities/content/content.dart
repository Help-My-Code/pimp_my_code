import 'package:freezed_annotation/freezed_annotation.dart';

import '../enum/content_type.dart';
import '../user.dart';

part 'content.freezed.dart';

@freezed
class Content with _$Content {
  const factory Content({
    required String content,
    required DateTime createdAt,
    required String creatorId,
    required ContentType contentType,
    required List<String> medias,
    required String username,
    String? id,
    String? groupId,
    User? creator,
    String? title,
    String? parentId,
    String? userPicture,
    String? code,
    String? codeResult,
    @Default(false) bool isLike,
    @Default(false) bool isDislike,
    required int numberOfLikes,
    required int numberOfDislikes,
    required int numberOfComments,
  }) = _Content;
}
