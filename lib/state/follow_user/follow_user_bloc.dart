import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/form_status.dart';
import '../../domain/entities/enum/confidentiality.dart';
import '../../domain/usecases/follow/create_follow.dart';
import '../../domain/usecases/user/update_user_use_case.dart';
import '../session/session_cubit.dart';

part 'follow_user_bloc.freezed.dart';

part 'follow_user_event.dart';

part 'follow_user_state.dart';

class FollowUserBloc extends Bloc<FollowUserEvent, FollowUserState> {
  final CreateFollowUseCase _createFollowUseCase;
  final SessionCubit _sessionCubit;

  FollowUserBloc(this._createFollowUseCase, this._sessionCubit)
      : super(const FollowUserState.state()) {
    on<_Submit>(onSubmit);
  }

  void onSubmit(_Submit event, Emitter emit) async {
    emit(state.copyWith(status: const FormSubmitting()));
    String followerId = await _sessionCubit.getUserId();
    final successOrFailure = await _createFollowUseCase(CreateFollowParam(
      event.userId, followerId,
    ));
    successOrFailure.fold(
      (failure) => emit(state.copyWith(status: const FormSubmissionFailed())),
      (success) =>
          emit(state.copyWith(status: const FormSubmissionSuccessful())),
    );
  }
}
