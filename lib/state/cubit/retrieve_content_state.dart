part of 'retrieve_content_cubit.dart';

@freezed
class RetrieveContentState with _$RetrieveContentState {
  const factory RetrieveContentState.initial() = _Initial;
  const factory RetrieveContentState.loading() = _Loading;
  const factory RetrieveContentState.loaded(List<Content> publications) =
      _Loaded;
}
