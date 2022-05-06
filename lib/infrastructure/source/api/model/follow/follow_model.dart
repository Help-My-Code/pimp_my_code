import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/entities/enum/status.dart';

import '../user/user_model.dart';

part 'follow_model.freezed.dart';
part 'follow_model.g.dart';

@freezed
class ApiFollowModel with _$ApiFollowModel {
  const factory ApiFollowModel({
    required String id,
    @JsonKey(name: 'follow_status')
    required String followStatus,
    required ApiUserModel follower,
    required ApiUserModel user,
  }) = _ApiFollowModel;

  factory ApiFollowModel.fromJson(Map<String, dynamic> json) =>
      _$ApiFollowModelFromJson(json);
}
