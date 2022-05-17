import '../domain/entities/content/content.dart';
import '../state/like/like_cubit.dart';

void onLikePress(LikeCubit likeCubit, Content publication) {
  if (publication.isLike) {
    likeCubit.unlike(publication.id!);
  } else {
    likeCubit.like(publication.id!);
  }
}

void onDislikePress(LikeCubit likeCubit, Content publication) {
  if (publication.isDislike) {
    likeCubit.undislike(publication.id!);
  } else {
    likeCubit.dislike(publication.id!);
  }
}
