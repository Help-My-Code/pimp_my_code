import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/group.dart';
import '../../domain/usecases/group/find_group_by_id.dart';
import '../../domain/usecases/group/find_group_by_name.dart';

part 'retrieve_group_by_id_cubit.freezed.dart';
part 'retrieve_group_by_id_state.dart';

class RetrieveGroupByIdCubit extends Cubit<RetrieveGroupByIdState> {
  final FindGroupByIdUseCase _findGroupById;
  RetrieveGroupByIdCubit(this._findGroupById)
      : super(const RetrieveGroupByIdState.initial());

  void loadGroup(String name) async {
    emit(const RetrieveGroupByIdState.loading());
    final groups = await _findGroupById(FindGroupByIdParam(name));
    groups.fold((l) {
      emit(const RetrieveGroupByIdState.failure());
    }, (r) {
      emit(RetrieveGroupByIdState.loaded(r));
    });
  }
}
