import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/usecases/content/get_following_publication.dart';
import '../session/session_cubit.dart';

import '../../domain/entities/content.dart';

part 'retrieve_content_state.dart';
part 'retrieve_content_cubit.freezed.dart';

class RetrieveContentCubit extends Cubit<RetrieveContentState> {
  final SessionCubit _sessionCubit;
  final GetFollowingPublicationUseCase _getFollowingPublication;
  RetrieveContentCubit(this._sessionCubit, this._getFollowingPublication)
      : super(const RetrieveContentState.initial());

  void loadPublication() async {
    emit(const RetrieveContentState.loading());
    String userId = await _sessionCubit.getUserId();
//    final publications = await _getFollowingPublication(userId);
//    publications.fold((l) {
//      emit(const RetrieveContentState.failure());
//    }, (r) {
//      emit(RetrieveContentState.loaded(r));
//    });
  }
}
