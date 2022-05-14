import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/entities/group.dart';

import '../../core/form_status.dart';
import '../../domain/entities/enum/confidentiality.dart';
import '../../domain/usecases/group/update_group.dart';

part 'update_group_bloc.freezed.dart';
part 'update_group_event.dart';
part 'update_group_state.dart';

class UpdateGroupBloc extends Bloc<UpdateGroupEvent, UpdateGroupState> {
  final UpdateGroupUseCase _registerUseCase;

  UpdateGroupBloc(this._registerUseCase)
      : super(const UpdateGroupState.state()) {
    on<_Submit>(onSubmit);
    on<_UpdateName>(onUpdateName);
    on<_UpdateDescription>(onUpdateDescription);
    on<_UpdateProfilePictureURL>(onUpdateProfilePictureURL);
    on<_UpdateConfidentiality>(onUpdateConfidentiality);
    on<_Loaded>(onLoaded);
  }

  void onLoaded(_Loaded event, Emitter emit) {
    emit(state.copyWith(
      confidentiality: event.group.confidentiality,
      description: event.group.description,
      name: event.group.name,
      profilePictureURL: event.group.principalPictureUrl,
    ));
  }

  void onSubmit(_Submit event, Emitter emit) async {
    emit(state.copyWith(status: const FormSubmitting()));
    final successOrFailure = await _registerUseCase(UpdateGroupParams(
      event.groupId,
      state.name,
      state.description!,
      state.profilePictureURL!,
      state.confidentiality,
    ));
    successOrFailure.fold(
      (failure) => emit(state.copyWith(status: const FormSubmissionFailed())),
      (success) =>
          emit(state.copyWith(status: const FormSubmissionSuccessful())),
    );
  }

  void onUpdateName(_UpdateName event, Emitter emit) {
    emit(state.copyWith(name: event.name, status: const FormNotSent()));
  }

  void onUpdateDescription(_UpdateDescription event, Emitter emit) {
    emit(state.copyWith(
        description: event.description, status: const FormNotSent()));
  }

  void onUpdateProfilePictureURL(_UpdateProfilePictureURL event, Emitter emit) {
    emit(state.copyWith(
        profilePictureURL: event.profilePictureURL,
        status: const FormNotSent()));
  }

  void onUpdateConfidentiality(_UpdateConfidentiality event, Emitter emit) {
    emit(state.copyWith(
        confidentiality: event.confidentiality, status: const FormNotSent()));
  }
}
