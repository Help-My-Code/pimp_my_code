import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pimp_my_code/domain/repositories/content_repository.dart';
import 'package:pimp_my_code/state/retrieve_content/retrieve_content_cubit.dart';
import 'package:pimp_my_code/state/session/session_cubit.dart';

part 'like_state.dart';
part 'like_cubit.freezed.dart';

class LikeCubit extends Cubit<LikeState> {
  final SessionCubit sessionCubit;
  final ContentRepository contentRepository;
  final RetrieveContentCubit retrieveContentCubit;
  LikeCubit({
    required this.contentRepository,
    required this.sessionCubit,
    required this.retrieveContentCubit,
  }) : super(const LikeState.initial());

  Future<void> unlike(String publicationId) async {
    String userId = await sessionCubit.getUserId();
    await contentRepository.unreact(publicationId, userId);
    retrieveContentCubit.unlike(publicationId);
  }

  Future<void> like(String publicationId) async {
    String userId = await sessionCubit.getUserId();
    await contentRepository.like(publicationId, userId);
    retrieveContentCubit.like(publicationId);
  }

  Future<void> undislike(String publicationId) async {
    String userId = await sessionCubit.getUserId();
    await contentRepository.unreact(publicationId, userId);
    retrieveContentCubit.undislike(publicationId);
  }

  Future<void> dislike(String publicationId) async {
    String userId = await sessionCubit.getUserId();
    await contentRepository.dislike(publicationId, userId);
    retrieveContentCubit.dislike(publicationId);
  }
}
