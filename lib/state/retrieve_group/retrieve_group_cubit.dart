import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/group.dart';
import '../../domain/usecases/group/find_group_by_name.dart';

part 'retrieve_group_cubit.freezed.dart';
part 'retrieve_group_state.dart';

class RetrieveGroupCubit extends Cubit<RetrieveGroupState> {
  final FindGroupByNameUseCase _findGroupByName;
  RetrieveGroupCubit(this._findGroupByName)
      : super(const RetrieveGroupState.initial());

  void loadGroup(String name) async {
    emit(const RetrieveGroupState.loading());
    final groups = await _findGroupByName(FindGroupByNameParam(name));
    groups.fold((l) {
      emit(const RetrieveGroupState.failure());
    }, (r) {
      emit(RetrieveGroupState.loaded(r));
    });
  }
}
