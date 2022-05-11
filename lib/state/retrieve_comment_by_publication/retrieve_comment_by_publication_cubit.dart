import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/content/content.dart';
import '../../domain/repositories/content_repository.dart';

part 'retrieve_comment_by_publication_state.dart';
part 'retrieve_comment_by_publication_cubit.freezed.dart';

class RetrieveCommentByPublicationCubit
    extends Cubit<RetrieveCommentByPublicationState> {
  final ContentRepository contentRepository;
  RetrieveCommentByPublicationCubit(this.contentRepository)
      : super(const RetrieveCommentByPublicationState.initial());

  Future<void> loadComment(String publicationId) async {
    emit(const RetrieveCommentByPublicationState.loading());
    final errorOrComments = await contentRepository.getComments(publicationId);
    errorOrComments.fold(
      (failure) {
        emit(const RetrieveCommentByPublicationState.initial());
        addError('failed to load comment');
      },
      (comments) {
        emit(RetrieveCommentByPublicationState.loaded(comments));
      },
    );
  }
}
