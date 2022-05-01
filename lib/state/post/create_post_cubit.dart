import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/entities/content.dart';
import 'package:pimp_my_code/domain/usecases/content/create_publication_use_case.dart';
import 'package:pimp_my_code/domain/usecases/program/execute_program_use_case.dart';

part 'create_post_state.dart';

part 'create_post_cubit.freezed.dart';

class CreatePostCubit extends Cubit<CreatePostState> {
  final CreatePublicationUseCase _createPublicationUseCase;
  final ExecuteProgramUseCase _executeProgramUseCase;

  CreatePostCubit(this._createPublicationUseCase, this._executeProgramUseCase)
      : super(CreatePostState.initial());

  bool get isValid {
    return state.content != null &&
        state.userPicture != null &&
        state.username != null &&
        state.createdAt != null &&
        state.medias != null;
  }

  void onNewTemporaryPost(String userPicture, String username) {
    final nextState = state.copyWith(
        userPicture: userPicture,
        username: username,
        createdAt: DateTime.now(),
        medias: []);
    emit(nextState);
  }

  void onTitleChange(String title) {
    emit(state.copyWith(title: title));
  }

  void onContentChange(String content) {
    emit(state.copyWith(content: content));
  }

  void onMediasChange(List<String> medias) {
    emit(state.copyWith(medias: medias));
  }

  void onCodeChange(String code) {
    emit(state.copyWith(code: code));
  }

  void onCodeResultChange(String codeResult) {
    emit(state.copyWith(codeResult: codeResult));
  }

  void onSubmitCompilation() async {
    emit(state.copyWith(isLoading: true));
    if (state.code != null) {
      final either = await _executeProgramUseCase
          .call(ExecuteProgramParams(state.language, state.code!));
      either.fold((l) => null, (r) => null);
    }
    emit(state.copyWith(isLoading: false));
  }

  void onSubmitPost(
    String creatorId,
  ) async {
    emit(state.copyWith(isLoading: true));
    if (isValid) {
      final either = await _createPublicationUseCase.call(
          CreatePublicationParam(
              createdAt: state.createdAt!,
              creatorId: creatorId,
              contentType: ContentType.publication.name,
              medias: state.medias!,
              content: state.content!,
              userPicture: state.userPicture!,
              username: state.username!));
      either.fold((l) => null, (r) => null);
    }
    emit(state.copyWith(isLoading: false));
  }
}
