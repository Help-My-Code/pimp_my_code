part of 'retrieve_user_by_id_cubit.dart';

@freezed
class RetrieveUserByIdState with _$RetrieveUserByIdState {
  const factory RetrieveUserByIdState.initial() = _Initial;
  const factory RetrieveUserByIdState.loading() = _Loading;
  const factory RetrieveUserByIdState.loaded(User user) =
  _Loaded;
  const factory RetrieveUserByIdState.failure() = _Failure;
}
