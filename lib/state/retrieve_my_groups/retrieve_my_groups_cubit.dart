import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/entities/group.dart';
import 'package:pimp_my_code/domain/usecases/group/find_my_groups.dart';

import '../session/session_cubit.dart';

part 'retrieve_my_groups_cubit.freezed.dart';
part 'retrieve_my_groups_state.dart';

class RetrieveMyGroupsCubit extends Cubit<RetrieveMyGroupsState> {
  final SessionCubit _sessionCubit;
  final FindMyGroupsUseCase _findMyGroups;
  RetrieveMyGroupsCubit(this._sessionCubit, this._findMyGroups)
      : super(const RetrieveMyGroupsState.initial());

  void loadMyGroups() async {
    emit(const RetrieveMyGroupsState.loading());
    String userId = await _sessionCubit.getUserId();
    final myGroups = await _findMyGroups(FindMyGroupsParam(userId));
    myGroups.fold((l) {
      emit(const RetrieveMyGroupsState.failure());
    }, (r) {
      emit(RetrieveMyGroupsState.loaded(r));
    });
  }
}

