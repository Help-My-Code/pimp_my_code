import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/form_status.dart';
import '../../domain/usecases/group-member/delete_group_member.dart';
import '../session/session_cubit.dart';

part 'quit_group_bloc.freezed.dart';

part 'quit_group_event.dart';

part 'quit_group_state.dart';

class QuitGroupBloc extends Bloc<QuitGroupEvent, QuitGroupState> {
  final DeleteGroupMemberUseCase _deleteGroupMemberUseCase;
  final SessionCubit _sessionCubit;

  QuitGroupBloc(this._deleteGroupMemberUseCase, this._sessionCubit)
      : super(const QuitGroupState.state()) {
    on<_Submit>(onSubmit);
  }

  void onSubmit(_Submit event, Emitter emit) async {
    emit(state.copyWith(status: const FormSubmitting()));
    String userId = await _sessionCubit.getUserId();
    final successOrFailure =
        await _deleteGroupMemberUseCase(DeleteGroupMemberParam(
      userId,
      event.groupId,
    ));
    successOrFailure.fold(
      (failure) => emit(state.copyWith(status: const FormSubmissionFailed())),
      (success) =>
          emit(state.copyWith(status: const FormSubmissionSuccessful())),
    );
  }
}
