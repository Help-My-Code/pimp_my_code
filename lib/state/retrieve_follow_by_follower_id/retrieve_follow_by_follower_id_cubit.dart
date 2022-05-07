import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/follow.dart';
import '../../domain/usecases/follow/find_follow_by_follower_id.dart';

part 'retrieve_follow_by_follower_id_cubit.freezed.dart';
part 'retrieve_follow_by_follower_id_state.dart';

class RetrieveFollowByFollowerIdCubit
    extends Cubit<RetrieveFollowByFollowerIdState> {
  final FindFollowByFollowerIdUseCase _findFollowByFollowerId;
  RetrieveFollowByFollowerIdCubit(this._findFollowByFollowerId)
      : super(const RetrieveFollowByFollowerIdState.initial());

  void loadFollowByFollowerId(String id) async {
    emit(const RetrieveFollowByFollowerIdState.loading());
    final users =
        await _findFollowByFollowerId(FindFollowByFollowerIdParam(id));
    users.fold((l) {
      emit(const RetrieveFollowByFollowerIdState.failure());
    }, (r) {
      emit(RetrieveFollowByFollowerIdState.loaded(r));
    });
  }
}
