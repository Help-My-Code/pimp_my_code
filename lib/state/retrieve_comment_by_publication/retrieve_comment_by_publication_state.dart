part of 'retrieve_comment_by_publication_cubit.dart';

@freezed
class RetrieveCommentByPublicationState
    with _$RetrieveCommentByPublicationState {
  const factory RetrieveCommentByPublicationState.initial() = _Initial;
  const factory RetrieveCommentByPublicationState.loading() = _Loading;
  const factory RetrieveCommentByPublicationState.loaded(
      List<Content> comments) = _Loaded;
}
