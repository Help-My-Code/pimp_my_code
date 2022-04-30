import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/usecases/user/find_user_by_name.dart';
import '../session/session_cubit.dart';

import '../../domain/entities/user.dart';

part 'retrieve_user_state.dart';
part 'retrieve_user_cubit.freezed.dart';

class RetrieveUserCubit extends Cubit<RetrieveUserState> {
  final SessionCubit _sessionCubit;
  final FindUserByNameUseCase _findUserByName;
  RetrieveUserCubit(this._sessionCubit, this._findUserByName)
      : super(const RetrieveUserState.initial());

  void loadUser() async {
    emit(const RetrieveUserState.loading());
    String userId = await _sessionCubit.getUserId();
    final publications = await _findUserByName(userId);
    publications.fold((l) {
      emit(const RetrieveUserState.failure());
    }, (r) {
      emit(RetrieveUserState.loaded(r));
    });
  }
}
