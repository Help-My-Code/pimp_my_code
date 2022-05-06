import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/content.dart';
import '../../domain/usecases/content/get_publications_by_user_id.dart';

part 'retrieve_content_by_user_id_cubit.freezed.dart';
part 'retrieve_content_by_user_id_state.dart';

class RetrieveContentByUserIdCubit extends Cubit<RetrieveContentByUserIdState> {
  final GetPublicationsByUserIdUseCase _getPublicationsByUserId;
  RetrieveContentByUserIdCubit(this._getPublicationsByUserId)
      : super(const RetrieveContentByUserIdState.initial());

  void loadPublication(String id) async {
    emit(const RetrieveContentByUserIdState.loading());
   final publications = await _getPublicationsByUserId(id);
   publications.fold((l) {
     emit(const RetrieveContentByUserIdState.failure());
   }, (r) {
     emit(RetrieveContentByUserIdState.loaded(r));
   });
  }
}
