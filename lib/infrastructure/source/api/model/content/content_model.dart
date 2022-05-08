import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_model.dart';

part 'content_model.freezed.dart';
part 'content_model.g.dart';

@freezed
class ApiContentModel with _$ApiContentModel {
  const factory ApiContentModel({
    required String id,
    required String content,
    required String creatorId,
    required List<String> medias,
    required String username,
    String? title,
    String? code,
    String? codeResult,
    ApiUserModel? creator,
    String? userImage,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'groupId') String? groupId,
    @JsonKey(name: 'parentId') String? parentId,
    @JsonKey(name: 'contentType') required String contentType,
    required int numberOfLikes,
    required int numberOfDislikes,
    required int numberOfComments,
  }) = _ApiContentModel;

  factory ApiContentModel.fromJson(Map<String, dynamic> json) =>
      _$ApiContentModelFromJson(json);
}
