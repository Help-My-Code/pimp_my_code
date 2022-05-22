import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/enum/status.dart';
import '../../domain/usecases/follow/update_follow.dart';

part 'update_follow_cubit.freezed.dart';
part 'update_follow_state.dart';

class UpdateFollowCubit extends Cubit<UpdateFollowState> {
  final UpdateFollowUseCase _updateFollow;
  UpdateFollowCubit(this._updateFollow)
      : super(const UpdateFollowState.initial());

  void updateFollow(
      Status followStatus, String followerId, String userId) async {
    emit(const UpdateFollowState.loading());
    final group = await _updateFollow(
        UpdateFollowParam(followStatus, followerId, userId));
    group.fold((l) {
      emit(const UpdateFollowState.failure());
    }, (r) {
      emit(const UpdateFollowState.success());
    });
  }
}
