import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/form_status.dart';
import '../../domain/usecases/group/create_group.dart';

part 'create_group_bloc.freezed.dart';
part 'create_group_event.dart';
part 'create_group_state.dart';

class CreateGroupBloc extends Bloc<CreateGroupEvent, CreateGroupState> {
  final CreateGroupUseCase _createGroupUseCase;

  CreateGroupBloc(this._createGroupUseCase)
      : super(const CreateGroupState.state()) {
    on<_Submit>(onSubmit);
    on<_UpdateName>(onUpdateName);
  }

  void onSubmit(_Submit event, Emitter emit) async {
    emit(state.copyWith(status: const FormSubmitting()));
    final successOrFailure = await _createGroupUseCase(CreateGroupParams(
      event.creatorId,
      state.name,
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
}
