part of 'retrieve_group_members_by_user_id_cubit.dart';

@freezed
class RetrieveGroupMembersByGroupIdState with _$RetrieveGroupMembersByGroupIdState {
  const factory RetrieveGroupMembersByGroupIdState.initial() = _Initial;
  const factory RetrieveGroupMembersByGroupIdState.loading() = _Loading;
  const factory RetrieveGroupMembersByGroupIdState.loaded(List<GroupMember> publications) =
  _Loaded;
  const factory RetrieveGroupMembersByGroupIdState.failure() = _Failure;
}
