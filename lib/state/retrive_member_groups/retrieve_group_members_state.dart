part of 'retrieve_group_members_cubit.dart';

@freezed
class RetrieveGroupMembersState with _$RetrieveGroupMembersState {
  const factory RetrieveGroupMembersState.initial() = _Initial;

  const factory RetrieveGroupMembersState.loading() = _Loading;

  const factory RetrieveGroupMembersState.loaded(List<GroupMember> groups) =
      _Loaded;

  const factory RetrieveGroupMembersState.failure() = _Failure;
}
