import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/enum/status.dart';
import '../../domain/usecases/group-member/update_group_member.dart';

part 'update_group_member_cubit.freezed.dart';
part 'update_group_member_state.dart';

class UpdateGroupMemberCubit extends Cubit<UpdateGroupMemberState> {
  final UpdateGroupMemberUseCase _updateGroupMember;
  UpdateGroupMemberCubit(this._updateGroupMember)
      : super(const UpdateGroupMemberState.initial());

  void updateGroupMember(
      Status membershipStatus, String memberId, String groupId) async {
    emit(const UpdateGroupMemberState.loading());
    final group = await _updateGroupMember(
        UpdateGroupMemberParam(membershipStatus, memberId, groupId));
    group.fold((l) {
      emit(const UpdateGroupMemberState.failure());
    }, (r) {
      emit(const UpdateGroupMemberState.success());
    });
  }
}
