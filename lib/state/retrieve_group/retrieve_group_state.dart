part of 'retrieve_group_cubit.dart';

@freezed
class RetrieveGroupState with _$RetrieveGroupState {
  const factory RetrieveGroupState.initial() = _Initial;
  const factory RetrieveGroupState.loading() = _Loading;
  const factory RetrieveGroupState.loaded(List<Group> publications) =
  _Loaded;
  const factory RetrieveGroupState.failure() = _Failure;
}
