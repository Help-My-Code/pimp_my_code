import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:pimp_my_code/domain/entities/content.dart';
import 'package:pimp_my_code/domain/usecases/content/create_publication_use_case.dart';
import 'package:pimp_my_code/domain/usecases/program/execute_program_use_case.dart';
import 'package:pimp_my_code/state/session/session_cubit.dart';
import '../../core/failure.dart';

part 'create_post_state.dart';
part 'create_post_cubit.freezed.dart';

class CreatePostCubit extends Cubit<CreatePostState> {
  final CreatePublicationUseCase _createPublicationUseCase;
  final ExecuteProgramUseCase _executeProgramUseCase;

  CreatePostCubit(this._createPublicationUseCase, this._executeProgramUseCase)
      : super(CreatePostState.initial());

  bool get isValid {
    return (state.content != null && state.content!.isNotEmpty) &&
        state.userPicture != null &&
        state.username != null &&
        state.createdAt != null &&
        state.medias != null;
  }

  bool get isValidForCompilation {
    return state.code != null && state.code!.isNotEmpty;
  }

  void onCancel() {
    emit(CreatePostState.initial());
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

  void onLanguageChange(String language) {
    emit(state.copyWith(language: language));
  }

  void onSubmitCompilation() async {
    emit(state.copyWith(isCompiling: true, codeResult: null));
    if (state.code != null) {
      final either = await _executeProgramUseCase
          .call(ExecuteProgramParams(state.language, state.code!));
      either.fold((f) {
        emit(state.copyWith(failureOrSuccessOption: some(left(f))));
      }, (r) {
        emit(state.copyWith(codeResult: r));
      });
    }
    emit(state.copyWith(isCompiling: false));
  }

  void onSubmitPost(
    BuildContext context,
  ) async {
    emit(state.copyWith(isLoading: true));
    final creatorId = await context.read<SessionCubit>().getUserId();
    if (isValid) {
      final either = await _createPublicationUseCase.call(
          CreatePublicationParam(
              code: state.code,
              codeResult: state.codeResult,
              createdAt: state.createdAt!,
              creatorId: creatorId,
              contentType: ContentType.publication.name,
              medias: state.medias!,
              content: state.content!,
              userPicture: state.userPicture!,
              username: state.username ?? ''));
      either.fold((f) {
        emit(state.copyWith(failureOrSuccessOption: some(left(f))));
      }, (r) {
        emit(CreatePostState.initial().copyWith(createdAt:  null));
        GoRouter.of(context).refresh();
      });
    }
    emit(state.copyWith(isLoading: false));
  }
}

void main() {
  var x = '0';
}
