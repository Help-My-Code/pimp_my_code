part of 'retrieve_publication_cubit.dart';

@freezed
class RetrievePublicationState with _$RetrievePublicationState {
  const factory RetrievePublicationState.initial() = _Initial;
  const factory RetrievePublicationState.loading() = _Loading;
  const factory RetrievePublicationState.failure() = _Failure;
  const factory RetrievePublicationState.loaded(Content value) = _Loaded;
}
