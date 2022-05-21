import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/entities/enum/notification_type.dart';
import 'package:pimp_my_code/domain/entities/user.dart';

import '../../domain/entities/group.dart';
import '../../domain/usecases/follow/update_follow.dart';
import '../../domain/usecases/group/find_group_by_id.dart';

part 'update_follow_cubit.freezed.dart';
part 'update_follow_state.dart';

class UpdateFollowCubit extends Cubit<UpdateFollowState> {
  final UpdateFollowUseCase _updateFollow;
  UpdateFollowCubit(this._updateFollow)
      : super(const UpdateFollowState.initial());

  void updateFollow(NotificationType notificationType, String followerId, String userId) async {
    emit(const UpdateFollowState.loading());
    final group = await _updateFollow(UpdateFollowParam(notificationType, followerId, userId));
    group.fold((l) {
      emit(const UpdateFollowState.failure());
    }, (r) {
      emit(const UpdateFollowState.success());
    });
  }
}
