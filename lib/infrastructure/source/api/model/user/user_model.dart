import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class ApiUserModel with _$ApiUserModel {
  const factory ApiUserModel({
    required String id,
    required String email,
    required String password,
    required String firstname,
    required String lastname,
    String? description,
    @JsonKey(name: 'user_role')
    required String userRole,
    required String confidentiality,
    @JsonKey(name: 'principal_picture_url')
    String? principalPictureUrl,
  }) = _ApiUserModel;

  factory ApiUserModel.fromJson(Map<String, dynamic> json) =>
      _$ApiUserModelFromJson(json);
}
