import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/usecases/content/delete_publication.dart';

part 'delete_content_cubit.freezed.dart';
part 'delete_content_state.dart';

class DeleteContentCubit extends Cubit<DeleteContentState> {
  final DeleteContentUseCase _deleteContent;

  DeleteContentCubit(this._deleteContent)
      : super(const DeleteContentState.initial());

  void deleteContent(String id) async {
    emit(const DeleteContentState.loading());
    final content = await _deleteContent(DeleteContentParam(id));
    content.fold((l) {
      emit(const DeleteContentState.failure());
    }, (r) {
      emit(const DeleteContentState.success());
    });
  }
}
