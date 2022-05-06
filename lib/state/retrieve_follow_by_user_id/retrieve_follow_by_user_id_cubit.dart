import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/follow.dart';
import '../../domain/usecases/follow/find_follow_by_user_id.dart';

part 'retrieve_follow_by_user_id_cubit.freezed.dart';
part 'retrieve_follow_by_user_id_state.dart';

class RetrieveFollowByUserIdCubit extends Cubit<RetrieveFollowByUserIdState> {
  final FindFollowByUserIdUseCase _findFollowByUserId;
  RetrieveFollowByUserIdCubit(this._findFollowByUserId)
      : super(const RetrieveFollowByUserIdState.initial());

  void loadFollowByUserId(String id) async {
    emit(const RetrieveFollowByUserIdState.loading());
    final users = await _findFollowByUserId(FindFollowByUserIdParam(id));
    users.fold((l) {
      emit(const RetrieveFollowByUserIdState.failure());
    }, (r) {
      emit(RetrieveFollowByUserIdState.loaded(r));
    });
  }
}
