import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_model.freezed.dart';
part 'content_model.g.dart';

@freezed
class ApiContentModel with _$ApiContentModel {
  const factory ApiContentModel({
    required String id,
    required String title,
    required String content,
    required DateTime createdAt,
    required String creatorId,
    required String groupId,
    required String parentId,
    required String contentType,
  }) = _ApiContentModel;

  factory ApiContentModel.fromJson(Map<String, dynamic> json) =>
      _$ApiContentModelFromJson(json);
}
