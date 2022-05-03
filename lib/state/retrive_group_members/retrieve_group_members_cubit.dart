import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/entities/group_member.dart';

import '../../domain/usecases/group-member/find_group_members.dart';
import '../session/session_cubit.dart';

part 'retrieve_group_members_cubit.freezed.dart';
part 'retrieve_group_members_state.dart';

class RetrieveGroupMembersCubit extends Cubit<RetrieveGroupMembersState> {
  final SessionCubit _sessionCubit;
  final FindGroupMembersUseCase _findGroupMembers;
  RetrieveGroupMembersCubit(this._sessionCubit, this._findGroupMembers)
      : super(const RetrieveGroupMembersState.initial());

  void loadGroupMembers() async {
    emit(const RetrieveGroupMembersState.loading());
    String userId = await _sessionCubit.getUserId();
    final groupMembers = await _findGroupMembers(FindGroupMembersParam(userId));
    groupMembers.fold((l) {
      emit(const RetrieveGroupMembersState.failure());
    }, (r) {
      emit(RetrieveGroupMembersState.loaded(r));
    });
  }
}

