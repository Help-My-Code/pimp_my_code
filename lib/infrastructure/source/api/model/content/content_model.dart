import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_model.dart';

part 'content_model.freezed.dart';
part 'content_model.g.dart';

@freezed
class ApiContentModel with _$ApiContentModel {
  const factory ApiContentModel({
    required String id,
    String? title,
    required String content,
    String? code,
    String? codeResult,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'groupId') String? groupId,
    @JsonKey(name: 'creatorId') String? creatorId,
    ApiUserModel? creator,
    @JsonKey(name: 'parentId') String? parentId,
    @JsonKey(name: 'contentType') required String contentType,
    required List<String>? medias,
    required String? username,
    String? userImage,
  }) = _ApiContentModel;

  factory ApiContentModel.fromJson(Map<String, dynamic> json) =>
      _$ApiContentModelFromJson(json);
}
