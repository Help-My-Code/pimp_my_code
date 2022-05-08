import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/repositories/content_repository.dart';
import 'package:pimp_my_code/state/retrieve_content/retrieve_content_cubit.dart';
import 'package:pimp_my_code/state/retrieve_content_by_user_id/retrieve_content_by_user_id_cubit.dart';
import 'package:pimp_my_code/state/session/session_cubit.dart';

part 'like_state.dart';

part 'like_cubit.freezed.dart';

class LikeCubit extends Cubit<LikeState> {
  final SessionCubit _sessionCubit;
  final ContentRepository _contentRepository;
  final RetrieveContentCubit? _retrieveContentCubit;
  final RetrieveContentByUserIdCubit? _retrieveContentByUserIdCubit;

  LikeCubit(this._contentRepository, this._retrieveContentCubit,
      this._retrieveContentByUserIdCubit, this._sessionCubit)
      : super(const LikeState.initial());

  Future<void> unlike(String publicationId) async {
    String userId = await _sessionCubit.getUserId();
    await _contentRepository.unreact(publicationId, userId);
    if (_retrieveContentCubit != null) {
      _retrieveContentCubit!.unlike(publicationId);
    } else {
      _retrieveContentByUserIdCubit!.unlike(publicationId);
    }
  }

  Future<void> like(String publicationId) async {
    String userId = await _sessionCubit.getUserId();
    await _contentRepository.like(publicationId, userId);
    if (_retrieveContentCubit != null) {
      _retrieveContentCubit!.like(publicationId);
    } else {
      _retrieveContentByUserIdCubit!.like(publicationId);
    }
  }

  Future<void> undislike(String publicationId) async {
    String userId = await _sessionCubit.getUserId();
    await _contentRepository.unreact(publicationId, userId);
    if (_retrieveContentCubit != null) {
      _retrieveContentCubit!.undislike(publicationId);
    } else {
      _retrieveContentByUserIdCubit!.undislike(publicationId);
    }
  }

  Future<void> dislike(String publicationId) async {
    String userId = await _sessionCubit.getUserId();
    await _contentRepository.dislike(publicationId, userId);
    if (_retrieveContentCubit != null) {
      _retrieveContentCubit!.dislike(publicationId);
    } else {
      _retrieveContentByUserIdCubit!.dislike(publicationId);
    }
  }
}
