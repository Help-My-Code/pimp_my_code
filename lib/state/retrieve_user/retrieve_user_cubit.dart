import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/usecases/user/find_user_by_name.dart';

import '../../domain/entities/user.dart';

part 'retrieve_user_cubit.freezed.dart';
part 'retrieve_user_state.dart';

class RetrieveUserCubit extends Cubit<RetrieveUserState> {
  final FindUserByNameUseCase _findUserByName;
  RetrieveUserCubit(this._findUserByName)
      : super(const RetrieveUserState.initial());

  void loadUser(String name) async {
    emit(const RetrieveUserState.loading());
    final users = await _findUserByName(FindUserByNameParam(name));
    users.fold((l) {
      emit(const RetrieveUserState.failure());
    }, (r) {
      emit(RetrieveUserState.loaded(r));
    });
  }
}
