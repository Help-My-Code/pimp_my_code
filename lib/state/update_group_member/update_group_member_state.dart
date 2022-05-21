part of 'update_group_member_cubit.dart';

@freezed
class UpdateGroupMemberState with _$UpdateGroupMemberState {
  const factory UpdateGroupMemberState.initial() = _Initial;
  const factory UpdateGroupMemberState.loading() = _Loading;
  const factory UpdateGroupMemberState.failure() = _Failure;
  const factory UpdateGroupMemberState.success() = _Success;
}
