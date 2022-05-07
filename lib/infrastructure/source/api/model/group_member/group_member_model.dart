import 'package:freezed_annotation/freezed_annotation.dart';

import '../group/group_model.dart';
import '../user/user_model.dart';

part 'group_member_model.freezed.dart';
part 'group_member_model.g.dart';

@freezed
class ApiGroupMemberModel with _$ApiGroupMemberModel {
  const factory ApiGroupMemberModel({
    @JsonKey(name: 'group_member_id') required String groupMemberId,
    @JsonKey(name: 'membership_status') required String membershipStatus,
    @JsonKey(name: 'user_role') required String userRole,
    required ApiUserModel member,
    required ApiGroupModel group,
  }) = _ApiGroupMemberModel;

  factory ApiGroupMemberModel.fromJson(Map<String, dynamic> json) =>
      _$ApiGroupMemberModelFromJson(json);
}
