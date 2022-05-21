import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/entities/enum/notification_type.dart';
import 'package:pimp_my_code/domain/entities/user.dart';

import '../../domain/entities/enum/status.dart';
import '../../domain/entities/group.dart';
import '../../domain/usecases/follow/update_follow.dart';
import '../../domain/usecases/group-member/update_group_member.dart';
import '../../domain/usecases/group/find_group_by_id.dart';

part 'update_group_member_cubit.freezed.dart';
part 'update_group_member_state.dart';

class UpdateGroupMemberCubit extends Cubit<UpdateGroupMemberState> {
  final UpdateGroupMemberUseCase _updateGroupMember;
  UpdateGroupMemberCubit(this._updateGroupMember)
      : super(const UpdateGroupMemberState.initial());

  void updateGroupMember(Status membershipStatus, String memberId, String groupId) async {
    emit(const UpdateGroupMemberState.loading());
    final group = await _updateGroupMember(UpdateGroupMemberParam(membershipStatus, memberId, groupId));
    group.fold((l) {
      emit(const UpdateGroupMemberState.failure());
    }, (r) {
      emit(const UpdateGroupMemberState.success());
    });
  }
}
