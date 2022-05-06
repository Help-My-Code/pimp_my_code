part of 'retrieve_content_by_user_id_cubit.dart';

@freezed
class RetrieveContentByUserIdState with _$RetrieveContentByUserIdState {
  const factory RetrieveContentByUserIdState.initial() = _Initial;
  const factory RetrieveContentByUserIdState.loading() = _Loading;
  const factory RetrieveContentByUserIdState.loaded(List<Content> publications) =
      _Loaded;
  const factory RetrieveContentByUserIdState.failure() = _Failure;
}
