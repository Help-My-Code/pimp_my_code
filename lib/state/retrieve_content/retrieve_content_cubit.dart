import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/repositories/content_repository.dart';
import '../../domain/usecases/content/get_following_publication.dart';
import '../../domain/usecases/content/get_publications_by_group_id.dart';
import '../../domain/usecases/content/get_publications_by_user_id.dart';
import '../session/session_cubit.dart';

import '../../domain/entities/content/content.dart';

part 'retrieve_content_state.dart';
part 'retrieve_content_cubit.freezed.dart';

class RetrieveContentCubit extends Cubit<RetrieveContentState> {
  final SessionCubit _sessionCubit;
  final GetPublicationsByUserIdUseCase _getPublicationsByUserId;
  final GetPublicationsByGroupIdUseCase _getPublicationsByGroupId;
  final GetFollowingPublicationUseCase _getFollowingPublication;
  final ContentRepository contentRepository;
  RetrieveContentCubit(
    this._sessionCubit,
    this._getFollowingPublication,
    this._getPublicationsByUserId,
    this._getPublicationsByGroupId,
    this.contentRepository,
  ) : super(const RetrieveContentState.initial());

  void loadPublication() async {
    emit(const RetrieveContentState.loading());
    String userId = await _sessionCubit.getUserId();
    final publications = await _getFollowingPublication(userId);
    publications.fold((l) {
      emit(const RetrieveContentState.failure());
    }, (r) {
      emit(RetrieveContentState.loaded(r));
    });
  }

  void loadPublicationByUserId(String id) async {
    emit(const RetrieveContentState.loading());
    final publications = await _getPublicationsByUserId(id);
    publications.fold((l) {
      emit(const RetrieveContentState.failure());
    }, (r) {
      emit(RetrieveContentState.loaded(r));
    });
  }

  void loadPublicationByGroupId(String id) async {
    emit(const RetrieveContentState.loading());
    final publications = await _getPublicationsByGroupId(id);
    publications.fold((l) {
      emit(const RetrieveContentState.failure());
    }, (r) {
      emit(RetrieveContentState.loaded(r));
    });
  }

  Future<void> loadComment(String publicationId) async {
    emit(const RetrieveContentState.loading());
    final errorOrComments = await contentRepository.getComments(publicationId);
    errorOrComments.fold(
      (failure) {
        emit(const RetrieveContentState.initial());
        addError('failed to load comment');
      },
      (comments) {
        emit(RetrieveContentState.loaded(comments));
      },
    );
  }

  void unlike(String publicationId) {
    state.maybeWhen(
      orElse: () {},
      loaded: (contents) {
        final loadedState = state as _Loaded;
        emit(loadedState.copyWith(
          publications: loadedState.publications.map((content) {
            if (content.id == publicationId) {
              return content.copyWith(
                  isLike: false,
                  isDislike: false,
                  numberOfLikes: content.numberOfLikes - 1);
            }
            return content;
          }).toList(),
        ));
      },
    );
  }

  void undislike(String publicationId) {
    state.maybeWhen(
      orElse: () {},
      loaded: (contents) {
        final loadedState = state as _Loaded;
        emit(loadedState.copyWith(
          publications: loadedState.publications.map((content) {
            if (content.id == publicationId) {
              return content.copyWith(
                  isLike: false,
                  isDislike: false,
                  numberOfDislikes: content.numberOfDislikes - 1);
            }
            return content;
          }).toList(),
        ));
      },
    );
  }

  void like(String publicationId) {
    state.maybeWhen(
      orElse: () {},
      loaded: (contents) {
        final loadedState = state as _Loaded;
        emit(loadedState.copyWith(
          publications: loadedState.publications.map((content) {
            if (content.id == publicationId) {
              if (content.isDislike) {
                return content.copyWith(
                    isLike: true,
                    isDislike: false,
                    numberOfLikes: content.numberOfLikes + 1,
                    numberOfDislikes: content.numberOfDislikes - 1);
              }
              return content.copyWith(
                  isLike: true,
                  isDislike: false,
                  numberOfLikes: content.numberOfLikes + 1);
            }
            return content;
          }).toList(),
        ));
      },
    );
  }

  void dislike(String publicationId) {
    state.maybeWhen(
      orElse: () {},
      loaded: (contents) {
        final loadedState = state as _Loaded;
        emit(loadedState.copyWith(
          publications: loadedState.publications.map((content) {
            if (content.id == publicationId) {
              if (content.isLike) {
                return content.copyWith(
                    isLike: false,
                    isDislike: true,
                    numberOfDislikes: content.numberOfDislikes + 1,
                    numberOfLikes: content.numberOfLikes - 1);
              }
              return content.copyWith(
                  isLike: false,
                  isDislike: true,
                  numberOfDislikes: content.numberOfDislikes + 1);
            }
            return content;
          }).toList(),
        ));
      },
    );
  }
}
