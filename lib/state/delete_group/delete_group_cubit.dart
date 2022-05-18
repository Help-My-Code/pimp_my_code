import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/usecases/group/delete_group.dart';

part 'delete_group_cubit.freezed.dart';
part 'delete_group_state.dart';

class DeleteGroupCubit extends Cubit<DeleteGroupState> {
  final DeleteGroupUseCase _deleteGroup;

  DeleteGroupCubit(this._deleteGroup)
      : super(const DeleteGroupState.initial());

  void deleteGroup(String id) async {
    emit(const DeleteGroupState.loading());
    final group = await _deleteGroup(DeleteGroupParam(id));
    group.fold((l) {
      emit(const DeleteGroupState.failure());
    }, (r) {
      emit(const DeleteGroupState.success());
    });
  }
}
