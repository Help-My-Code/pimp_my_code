import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/form_status.dart';
import '../../domain/usecases/content/update_content.dart';

part 'update_content_bloc.freezed.dart';
part 'update_content_event.dart';
part 'update_content_state.dart';

class UpdateContentBloc extends Bloc<UpdateContentEvent, UpdateContentState> {
  final UpdateContentUseCase _updateContentUseCase;

  UpdateContentBloc(this._updateContentUseCase)
      : super(const UpdateContentState.state()) {
    on<_Submit>(onSubmit);
    on<_UpdateTitle>(onUpdateTitle);
    on<_UpdateContent>(onUpdateContent);
    on<_Loaded>(onLoaded);
  }

  void onLoaded(_Loaded event, Emitter emit) {
    emit(state.copyWith(
      content: event.content,
      title: event.title,
    ));
  }

  void onSubmit(_Submit event, Emitter emit) async {
    emit(state.copyWith(status: const FormSubmitting()));
    final successOrFailure = await _updateContentUseCase(UpdateContentParams(
      event.contentId,
      state.title,
      state.content,
    ));
    successOrFailure.fold(
        (failure) => emit(state.copyWith(status: const FormSubmissionFailed())),
        (success) {
      emit(state.copyWith(status: const FormSubmissionSuccessful()));
      event.reloadFunction();
    });
  }

  void onUpdateTitle(_UpdateTitle event, Emitter emit) {
    emit(state.copyWith(title: event.title, status: const FormNotSent()));
  }

  void onUpdateContent(_UpdateContent event, Emitter emit) {
    emit(state.copyWith(content: event.content, status: const FormNotSent()));
  }

  void init(String title, String content) {
    add(_Loaded(title, content));
  }
}
