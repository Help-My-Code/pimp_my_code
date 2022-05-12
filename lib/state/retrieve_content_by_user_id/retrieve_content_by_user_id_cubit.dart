import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/content/content.dart';
import '../../domain/usecases/content/get_publications_by_user_id.dart';

part 'retrieve_content_by_user_id_cubit.freezed.dart';
part 'retrieve_content_by_user_id_state.dart';

class RetrieveContentByUserIdCubit extends Cubit<RetrieveContentByUserIdState> {
  final GetPublicationsByUserIdUseCase _getPublicationsByUserId;
  RetrieveContentByUserIdCubit(this._getPublicationsByUserId)
      : super(const RetrieveContentByUserIdState.initial());

  void loadPublication(String id) async {
    emit(const RetrieveContentByUserIdState.loading());
    final publications = await _getPublicationsByUserId(id);
    publications.fold((l) {
      emit(const RetrieveContentByUserIdState.failure());
    }, (r) {
      emit(RetrieveContentByUserIdState.loaded(r));
    });
  }

  void unlike(String publicationId) {
    state.maybeWhen(
      orElse: () {},
      loaded: (contents) {
        final loadedState = state as _Loaded;
        emit(loadedState.copyWith(
          publications: loadedState.publications.map((content) {
            if (content.id == publicationId) {
              return content.copyWith(isLike: false, isDislike: false, numberOfLikes: content.numberOfLikes - 1);
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
              return content.copyWith(isLike: false, isDislike: false, numberOfDislikes: content.numberOfDislikes - 1);
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
              if(content.isDislike) {
                return content.copyWith(isLike: true, isDislike: false, numberOfLikes: content.numberOfLikes + 1, numberOfDislikes: content.numberOfDislikes - 1);
              }
              return content.copyWith(isLike: true, isDislike: false, numberOfLikes: content.numberOfLikes + 1);
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
              if(content.isLike) {
                return content.copyWith(isLike: false, isDislike: true, numberOfDislikes: content.numberOfDislikes + 1, numberOfLikes: content.numberOfLikes - 1);
              }
              return content.copyWith(isLike: false, isDislike: true, numberOfDislikes: content.numberOfDislikes + 1);
            }
            return content;
          }).toList(),
        ));
      },
    );
  }
}