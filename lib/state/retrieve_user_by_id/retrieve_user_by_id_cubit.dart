import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';
import '../../domain/usecases/user/find_user_by_id.dart';

part 'retrieve_user_by_id_cubit.freezed.dart';
part 'retrieve_user_by_id_state.dart';

class RetrieveUserByIdCubit extends Cubit<RetrieveUserByIdState> {
  final FindUserByIdUseCase _findUserById;
  RetrieveUserByIdCubit(this._findUserById)
      : super(const RetrieveUserByIdState.initial());

  void loadUserById(String id) async {
    emit(const RetrieveUserByIdState.loading());
    final user = await _findUserById(FindUserByIdParam(id));
    user.fold((l) {
      emit(const RetrieveUserByIdState.failure());
    }, (r) {
      emit(RetrieveUserByIdState.loaded(r));
    });
  }
}
