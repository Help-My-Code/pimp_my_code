part of 'retrieve_group_by_id_cubit.dart';

@freezed
class RetrieveGroupByIdState with _$RetrieveGroupByIdState {
  const factory RetrieveGroupByIdState.initial() = _Initial;
  const factory RetrieveGroupByIdState.loading() = _Loading;
  const factory RetrieveGroupByIdState.loaded(Group group) = _Loaded;
  const factory RetrieveGroupByIdState.failure() = _Failure;
}
