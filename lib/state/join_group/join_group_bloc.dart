import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/form_status.dart';
import '../../domain/usecases/group-member/create_group_member.dart';
import '../session/session_cubit.dart';

part 'join_group_bloc.freezed.dart';

part 'join_group_event.dart';

part 'join_group_state.dart';

class JoinGroupBloc extends Bloc<JoinGroupEvent, JoinGroupState> {
  final CreateGroupMemberUseCase _createGroupMemberUseCase;
  final SessionCubit _sessionCubit;

  JoinGroupBloc(this._createGroupMemberUseCase, this._sessionCubit)
      : super(const JoinGroupState.state()) {
    on<_Submit>(onSubmit);
  }

  void onSubmit(_Submit event, Emitter emit) async {
    emit(state.copyWith(status: const FormSubmitting()));
    String userId = await _sessionCubit.getUserId();
    final successOrFailure =
        await _createGroupMemberUseCase(CreateGroupMemberParam(
      event.groupId,
      userId,
    ));
    successOrFailure.fold(
      (failure) => emit(state.copyWith(status: const FormSubmissionFailed())),
      (success) =>
          emit(state.copyWith(status: const FormSubmissionSuccessful())),
    );
  }
}
