import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/form_status.dart';
import '../../domain/usecases/follow/delete_follow.dart';
import '../session/session_cubit.dart';

part 'unfollow_user_bloc.freezed.dart';

part 'unfollow_user_event.dart';

part 'unfollow_user_state.dart';

class UnfollowUserBloc extends Bloc<UnfollowUserEvent, UnfollowUserState> {
  final DeleteFollowUseCase _deleteFollowUseCase;
  final SessionCubit _sessionCubit;

  UnfollowUserBloc(this._deleteFollowUseCase, this._sessionCubit)
      : super(const UnfollowUserState.state()) {
    on<_Submit>(onSubmit);
  }

  void onSubmit(_Submit event, Emitter emit) async {
    emit(state.copyWith(status: const FormSubmitting()));
    String followerId = await _sessionCubit.getUserId();
    final successOrFailure = await _deleteFollowUseCase(DeleteFollowParam(
      event.userId,
      followerId,
    ));
    successOrFailure.fold(
      (failure) => emit(state.copyWith(status: const FormSubmissionFailed())),
      (success) =>
          emit(state.copyWith(status: const FormSubmissionSuccessful())),
    );
  }
}
