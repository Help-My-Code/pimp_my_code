part of 'retrieve_my_groups_cubit.dart';

@freezed
class RetrieveMyGroupsState with _$RetrieveMyGroupsState {
  const factory RetrieveMyGroupsState.initial() = _Initial;
  const factory RetrieveMyGroupsState.loading() = _Loading;
  const factory RetrieveMyGroupsState.loaded(List<Group> groups) =
  _Loaded;
  const factory RetrieveMyGroupsState.failure() = _Failure;
}
