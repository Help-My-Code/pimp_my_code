import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/group_member.dart';
import '../../domain/usecases/group-member/find_group_members_by_group_id.dart';

part 'retrieve_group_members_by_user_id_cubit.freezed.dart';
part 'retrieve_group_members_by_user_id_state.dart';

class RetrieveGroupMembersByGroupIdCubit extends Cubit<RetrieveGroupMembersByGroupIdState> {
  final FindGroupMembersByGroupIdUseCase _findGroupMemberByGroupId;
  RetrieveGroupMembersByGroupIdCubit(this._findGroupMemberByGroupId)
      : super(const RetrieveGroupMembersByGroupIdState.initial());

  void loadGroupMemberByGroupId(String id) async {
    emit(const RetrieveGroupMembersByGroupIdState.loading());
    final users = await _findGroupMemberByGroupId(FindGroupMembersByGroupIdParam(id));
    users.fold((l) {
      emit(const RetrieveGroupMembersByGroupIdState.failure());
    }, (r) {
      emit(RetrieveGroupMembersByGroupIdState.loaded(r));
    });
  }
}
