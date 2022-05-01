import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/infrastructure/source/api/model/user/user_model.dart';

part 'group_model.freezed.dart';
part 'group_model.g.dart';

@freezed
class ApiGroupModel with _$ApiGroupModel {
  const factory ApiGroupModel({
    required String id,
    required String name,
    String? description,
    required String confidentiality,
    @JsonKey(name: 'principal_picture_url')
    String? principalPictureUrl,
    required ApiUserModel creator,
  }) = _ApiGroupModel;

  factory ApiGroupModel.fromJson(Map<String, dynamic> json) =>
      _$ApiGroupModelFromJson(json);
}
