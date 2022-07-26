import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/enum/content_type.dart';
import '../../domain/usecases/content/create_publication_use_case.dart';
import '../../domain/usecases/program/execute_program_use_case.dart';
import '../../ui/default_pictures.dart';
import '../session/session_cubit.dart';

import '../../core/failure.dart';

part 'create_post_cubit.freezed.dart';
part 'create_post_state.dart';

class CreatePostCubit extends Cubit<CreatePostState> {
  final CreatePublicationUseCase _createPublicationUseCase;
  final ExecuteProgramUseCase _executeProgramUseCase;

  CreatePostCubit(this._createPublicationUseCase, this._executeProgramUseCase)
      : super(CreatePostState.initial());

  bool get isValid {
    final valid = (state.content != null && state.content!.isNotEmpty) &&
        state.userPicture != null &&
        state.username != null &&
        state.createdAt != null &&
        state.medias != null;
    return valid;
  }

  bool get isValidForCompilation {
    return state.code != null && state.code!.isNotEmpty;
  }

  void makeAttributes(String? parentId, String? groupId) {
    if (parentId != null) {
      emit(
        state.copyWith(contentType: ContentType.comment, parentId: parentId),
      );
    }
    if (groupId != null) {
      emit(
        state.copyWith(groupId: groupId),
      );
    }
  }

  void onCancel() {
    emit(CreatePostState.initial());
  }

  void onTitleChange(String title) {
    emit(state.copyWith(title: title));
  }

  void onContentChange(String content) {
    emit(state.copyWith(content: content));
  }

  void onMediasChange(String media, int index) {
    var medias = state.medias;
    medias[index] = media;
    emit(state.copyWith(medias: medias));
  }

  void onCodeChange(String code) {
    emit(state.copyWith(code: code));
  }

  void onCodeResultChange(String codeResult) {
    emit(state.copyWith(codeResult: codeResult));
  }

  void onLanguageChange(String language) {
    emit(state.copyWith(language: language));
  }

  void onSubmitCompilation() async {
    emit(state.copyWith(isCompiling: true, codeResult: null));
    if (state.code != null) {
      final either = await _executeProgramUseCase
          .call(ExecuteProgramParams(state.language, state.code!));
      either.fold((f) {
        emit(state.copyWith(
            failureOrSuccessOption: left(f), isCompiling: false));
      }, (r) {
        emit(state.copyWith(codeResult: r, isCompiling: false));
      });
      return;
    }
    emit(state.copyWith(isCompiling: false));
  }

  void onSubmitPost(BuildContext context) async {
    emit(state.copyWith(isLoading: true));
    final creatorId = await context.read<SessionCubit>().getUserId();
    if (isValid) {
      final List<String> nonNullMedias =
          state.medias.whereType<String>().toList();
      final either = await _createPublicationUseCase.call(
        CreatePublicationParam(
          code: state.code,
          codeResult: state.codeResult,
          createdAt: state.createdAt!,
          creatorId: creatorId,
          contentType: state.contentType.string,
          medias: nonNullMedias,
          content: state.content!,
          userPicture: state.userPicture!,
          username: state.username ?? '',
          parentId: state.parentId,
          groupId: state.groupId,
        ),
      );
      either.fold((f) {
        emit(state.copyWith(failureOrSuccessOption: left(f)));
      }, (r) {
        Navigator.of(context).pop();
        GoRouter.of(context).refresh();
      });
    }
    emit(state.copyWith(isLoading: false));
  }
}
